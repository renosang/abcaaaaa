.class public Lcom/android/contacts/common/GeoUtil;
.super Ljava/lang/Object;
.source "GeoUtil.java"


# static fields
.field private static IS_OVER_SEA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/GeoUtil;->IS_OVER_SEA:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/contacts/common/location/CountryDetector;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/location/CountryDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/location/CountryDetector;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGeocodedLocationFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-boolean v5, Lcom/android/contacts/common/GeoUtil;->IS_OVER_SEA:Z

    if-eqz v5, :cond_0

    .line 52
    invoke-static {}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    .line 53
    .local v1, "geocoder":Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 56
    .local v3, "phoneNumberUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 57
    .local v4, "structuredPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v1, v4, v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 59
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v4    # "structuredPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    const/4 v5, 0x0

    return-object v5

    .line 63
    .end local v0    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    .end local v1    # "geocoder":Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .end local v3    # "phoneNumberUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :cond_0
    invoke-static {p1}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->getRegional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
