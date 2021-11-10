const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const mysql = require('mysql');
const Calculation = require('./Calculation');


const db = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'myclinicver2',
});
app.use(bodyParser.urlencoded({ extended: true }))
app.use(express.json());
app.use(cors()
);





app.put("/api/update/LatestCheckupInfo", (req, res) => {

    const patientId = req.body.Updateid;
    const dateOfAdmission = req.body.UpdateDate;
    const chiefComplaint = req.body.UpdatechiefComplaint;
    const historyofpatientIllness = req.body.UpdatehistoryofpatientIllness;
    const generalAppearance = req.body.UpdategeneralAppearance;
    const BP = req.body.UpdateBP;
    const HR = req.body.UpdateHR;
    const RR = req.body.UpdateRR;
    const temperature = req.body.Updatetemperature;
    const o2Sat = req.body.Updateo2Sat;
    const weight = req.body.Updateweight;
    const skin = req.body.Updateskin;
    const heent = req.body.Updateheent;
    const neck = req.body.Updateneck;
    const chest = req.body.Updatechest;
    const CVS = req.body.UpdateCVS;
    const abdomen = req.body.Updateabdomen;
    const gut = req.body.Updategut;
    const extromities = req.body.Updateextromities;
    const neuro = req.body.Updateneuro;
    const admittingDiagnosis = req.body.UpdateadmittingDiagnosis;
    const treatment = req.body.Updatetreatment;



    const sqlUpdate = "UPDATE patient_checkup_info SET  chiefComplaint=?, historyofpatientIllness=?,generalAppearance=?, BP=?, HR=?, RR=?, temperature=?, o2Sat=?, weight=?, skin=?, heent=?, neck=?, chest=?, CVS=?, abdomen=?, gut=?, extromities=?, neuro=?, admittingDiagnosis=?, treatment=? WHERE patientId = ? AND dateOfAdmission = ?";
    db.query(sqlUpdate, [chiefComplaint, historyofpatientIllness, generalAppearance, BP, HR, RR, temperature, o2Sat, weight, skin, heent, neck, chest, CVS, abdomen, gut, extromities, neuro, admittingDiagnosis, treatment, patientId, dateOfAdmission], (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send(result)

        }


    });
});

app.delete("/api/delete/:id", (req, res) => {

    const id = req.params.id;

    const sqlDelete = "DELETE FROM patient_data WHERE id = ? ";
    db.query(sqlDelete, id, (err, result) => {
        if (err) {
            console.log(err)
        }
        else {
            res.send("success deletion")
        }

    });
});




app.get("/api/get/HistoryList/Details/:id", (req, res) => {

    const id = req.params.id;

    const sqlSelect = "SELECT * FROM patient_data WHERE id = ?";
    db.query(sqlSelect, id, (err, result) => {
        if (err) {
            console.log(err)
        } else {

            res.send(result);
        }

    });
});






// ****************         UPDATE STARTS HERE         *******************

app.post("/api/PatientPersonalInfo/insert", (req, res) => {

    const name = req.body.name;

    const dateofBirth = req.body.dateofBirth;
    const gender = req.body.gender;
    const bloodType = req.body.bloodType;
    const address = req.body.address;


    const sqlInsert =
        "INSERT INTO patient_data (name, gender, dateofBirth, address,bloodType ) VALUES (?,?,?,?,?)";
    db.query(sqlInsert, [name, gender, dateofBirth, address, bloodType], (err, result) => {

        if (err) {
            console.log(err);
        } else {

            res.send(result);
        }
    });
});


app.post("/api/PatientCheckUpinfo/insert", (req, res) => {


    const patientId = req.body.patientId;
    const date = Calculation.dateTime();
    const chiefComplaint = req.body.chiefComplaint;
    const historyofpatientIllness = req.body.historyofpatientIllness;
    const generalAppearance = req.body.generalAppearance;

    const BP = req.body.BP;
    const HR = req.body.HR;
    const RR = req.body.RR;
    const temperature = req.body.temperature;
    const o2Sat = req.body.o2Sat;
    const weight = req.body.weight;

    const skin = req.body.skin;
    const heent = req.body.heent;
    const neck = req.body.neck;
    const chest = req.body.chest;
    const CVS = req.body.CVS;
    const abdomen = req.body.abdomen;
    const gut = req.body.gut;
    const extromities = req.body.extromities;
    const neuro = req.body.neuro;

    const admittingDiagnosis = req.body.admittingDiagnosis;
    const treatment = req.body.treatment;



    const sqlInsert =
        "INSERT INTO patient_checkup_info( patientId, chiefComplaint, historyofpatientIllness, generalAppearance, BP, HR, RR, temperature, o2Sat, weight, skin, heent, neck, chest, CVS, abdomen, gut, extromities, neuro, admittingDiagnosis, treatment, dateOfAdmission) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    db.query(sqlInsert, [patientId, chiefComplaint, historyofpatientIllness, generalAppearance, BP, HR, RR, temperature, o2Sat, weight, skin, heent, neck, chest, CVS, abdomen, gut, extromities, neuro, admittingDiagnosis, treatment, date], (err, result) => {

        if (err) {
            console.log(err);
        } else {
            updateDateOfLatestAdmission(patientId, date);
            //validating with date in response
            res.send(date);
        }
    });
});


app.get("/api/get/HistoryList", (req, res) => {

    const sqlSelect = "SELECT * FROM patient_data";
    db.query(sqlSelect, (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send(result);
        }

    });
});

// app.get("/api/get/HistoryList/Search", (req, res) => {

//     const sqlSelect = "SELECT * FROM patien_data ";
//     db.query(sqlSelect, (err, result) => {
//         if (err) {
//             console.log(err)
//         } else {
//             res.send(result);
//         }

//     });
// });

app.get("/api/get/PersonalInfo/Details/:id", (req, res) => {
    const id = req.params.id;

    const sqlSelect = "SELECT * FROM patient_data WHERE id = ?";
    db.query(sqlSelect, id, (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send(result);
        }
    });
});

app.get("/api/get/CheckupInfo/Details/:id/:date", (req, res) => {

    const dateOfLatestAdmission = req.params.date;
    const patientId = req.params.id;

    const sqlSelect = "SELECT * FROM patient_checkup_info WHERE patientId = ? AND dateOfAdmission = ?";
    db.query(sqlSelect, [patientId, dateOfLatestAdmission], (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send(result);
        }
    });
});

app.get("/api/get/dateList/:id", (req, res) => {
    const patientId = req.params.id;

    const sqlSelect = "SELECT dateOfAdmission FROM patient_checkup_info WHERE patientId=?";
    db.query(sqlSelect, patientId, (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send(result);

        }

    });
});

app.post("/api/loginUser", (req, res) => {
    const username = req.body.username;
    const password = req.body.password;

    const sqlSelect = "SELECT * FROM user WHERE username = ? AND password =? ";
    db.query(sqlSelect, [username, password], (err, result) => {
        if (err) {

            res.send({ err: err })
        } if (result.length > 0) {
            res.send(result);

        }
        else {
            res.send({ message: "Username/Password not valid !!!-Try Again <0:>" })
        }

    });
});


function updateDateOfLatestAdmission(patientId, date) {
    const sqlUpdate = "UPDATE patient_data SET dateOfLatestAdmission = ? WHERE id = ?";
    db.query(sqlUpdate, [date, patientId], (err, result) => {
        if (err) console.log(err);
    });
}



app.listen(3003, () => {
    console.log("running on 3003")
});