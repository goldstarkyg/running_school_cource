import { FuseUtils } from '@fuse/utils';
var Level = /** @class */ (function () {
    /**
     * Constructor
     *
     * @param contact
     */
    function Level(contact) {
        {
            this.id = contact.id || FuseUtils.generateGUID();
            this.name = contact.name || '';
            this.lastName = contact.lastName || '';
            this.avatar = contact.avatar || 'assets/images/logos/school_logo.jpg';
            this.nickname = contact.nickname || '';
            this.company = contact.company || '';
            this.jobTitle = contact.jobTitle || '';
            this.email = contact.email || '';
            this.phone = contact.phone || '';
            this.address = contact.address || '';
            this.birthday = contact.birthday || '';
            this.notes = contact.notes || '';
        }
    }
    return Level;
}());
export { Level };
//# sourceMappingURL=level.model.js.map