var Mail = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param mail
     */
    function Mail(mail) {
        this.id = mail.id;
        this.from = mail.from;
        this.to = mail.to;
        this.subject = mail.subject;
        this.message = mail.message;
        this.time = mail.time;
        this.read = mail.read;
        this.starred = mail.starred;
        this.important = mail.important;
        this.hasAttachments = mail.hasAttachments;
        this.attachments = mail.attachments;
        this.labels = mail.labels;
        this.folder = mail.folder;
    }
    /**
     * Toggle star
     */
    Mail.prototype.toggleStar = function () {
        this.starred = !this.starred;
    };
    /**
     * Toggle important
     */
    Mail.prototype.toggleImportant = function () {
        this.important = !this.important;
    };
    return Mail;
}());
export { Mail };
//# sourceMappingURL=mail.model.js.map