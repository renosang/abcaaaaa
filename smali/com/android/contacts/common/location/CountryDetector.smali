.class public Lcom/android/contacts/common/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;,
        Lcom/android/contacts/common/location/CountryDetector$LocationChangedReceiver;
    }
.end annotation


# static fields
.field private static final DISTANCE_BETWEEN_UPDATES_METERS:J = 0x1388L

.field public static final KEY_PREFERENCE_CURRENT_COUNTRY:Ljava/lang/String; = "preference_current_country"

.field public static final KEY_PREFERENCE_TIME_UPDATED:Ljava/lang/String; = "preference_time_updated"

.field private static final TAG:Ljava/lang/String; = "CountryDetector"

.field private static final TIME_BETWEEN_UPDATES_MS:J = 0x2932e00L

.field private static sInstance:Lcom/android/contacts/common/location/CountryDetector;


# instance fields
.field private final DEFAULT_COUNTRY_ISO:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLocaleProvider:Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 80
    const-string/jumbo v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 81
    new-instance v2, Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    invoke-direct {v2}, Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;-><init>()V

    .line 79
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/contacts/common/location/CountryDetector;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "locationManager"    # Landroid/location/LocationManager;
    .param p4, "localeProvider"    # Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "US"

    iput-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->DEFAULT_COUNTRY_ISO:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/android/contacts/common/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    iput-object p3, p0, Lcom/android/contacts/common/location/CountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    iput-object p4, p0, Lcom/android/contacts/common/location/CountryDetector;->mLocaleProvider:Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    .line 89
    iput-object p1, p0, Lcom/android/contacts/common/location/CountryDetector;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/common/location/CountryDetector;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/contacts/common/location/CountryDetector;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/location/CountryDetector;->sInstance:Lcom/android/contacts/common/location/CountryDetector;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/android/contacts/common/location/CountryDetector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/common/location/CountryDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/common/location/CountryDetector;->sInstance:Lcom/android/contacts/common/location/CountryDetector;

    .line 134
    :cond_0
    sget-object v0, Lcom/android/contacts/common/location/CountryDetector;->sInstance:Lcom/android/contacts/common/location/CountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocaleBasedCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->mLocaleProvider:Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;

    invoke-virtual {v1}, Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 190
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 193
    :cond_0
    return-object v2
.end method

.method private getLocationBasedCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/util/PermissionsUtil;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "preference_current_country"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    .end local v0    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-object v2
.end method

.method private getNetworkBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimBasedCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/common/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkCountryCodeAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 199
    iget-object v1, p0, Lcom/android/contacts/common/location/CountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerForLocationUpdates(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/contacts/common/util/PermissionsUtil;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, "CountryDetector"

    const-string/jumbo v1, "No location permissions, not registering for location updates."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 101
    :cond_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    return-void

    .line 107
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/common/location/CountryDetector$LocationChangedReceiver;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v6, "activeIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 109
    const/high16 v1, 0x8000000

    .line 108
    invoke-static {p0, v0, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 111
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const-string/jumbo v1, "passive"

    .line 112
    const v4, 0x459c4000    # 5000.0f

    const-wide/32 v2, 0x2932e00

    move-object v0, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 147
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->getSimBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/contacts/common/location/CountryDetector;->getLocaleBasedCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const-string/jumbo v0, "US"

    .line 156
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInstanceForTest(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;Landroid/location/Geocoder;)Lcom/android/contacts/common/location/CountryDetector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "locationManager"    # Landroid/location/LocationManager;
    .param p4, "localeProvider"    # Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;
    .param p5, "geocoder"    # Landroid/location/Geocoder;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/android/contacts/common/location/CountryDetector;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/contacts/common/location/CountryDetector;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/location/LocationManager;Lcom/android/contacts/common/location/CountryDetector$LocaleProvider;)V

    return-object v0
.end method
