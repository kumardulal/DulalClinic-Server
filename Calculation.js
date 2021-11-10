
function Calculation() {
    //for current date and time
    this.dateTime = function currentDate() {
        let ts = Date.now();
        let date_ob = new Date(ts);
        let date = date_ob.getDate();
        let month = date_ob.getMonth() + 1;
        let year = date_ob.getFullYear();
        // current hours
        let hours = date_ob.getHours();
        // current minutes
        let minutes = date_ob.getMinutes();
        // current seconds
        let seconds = date_ob.getSeconds();
        let milisec = date_ob.getMilliseconds();

        const messagedate = (year + "-" + month + "-" + date + " " + hours + ":" + minutes + ":" + seconds + ":" + milisec)

        return messagedate;
    }

}
module.exports = new Calculation();


