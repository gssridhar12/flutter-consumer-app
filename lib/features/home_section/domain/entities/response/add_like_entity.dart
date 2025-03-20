class AddPartnerLikeEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    AddPartnerLikeEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });

}

class Data {
    final String? id;
    final String? userUuid;
    final String? profileUuid;
    final bool? isLiked;

    Data({
        this.id,
        this.userUuid,
        this.profileUuid,
        this.isLiked,
    });

}
