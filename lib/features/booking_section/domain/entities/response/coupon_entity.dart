class CouponEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    CouponEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });
}

class Data {
    final List<PackageCoupon>? packageCoupons;

    Data({
        this.packageCoupons,
    });
}

class PackageCoupon {
    final String? packageUuid;
    final String? couponUuid;
    final double? minBillingTotal;
    final double? fixedAmount;
    final String? couponName;
    final String? couponDescription;
    final List<String>? validator;
    final List<String>? validDays;
    final DateTime? validFrom;
    final DateTime? validTo;
    final List<String>? activeDays;
    final String? couponCode;
    final bool? status;
    final DateTime? createdOn;

    PackageCoupon({
        this.packageUuid,
        this.couponUuid,
        this.minBillingTotal,
        this.fixedAmount,
        this.couponName,
        this.couponDescription,
        this.validator,
        this.validDays,
        this.validFrom,
        this.validTo,
        this.activeDays,
        this.couponCode,
        this.status,
        this.createdOn,
    });
}
