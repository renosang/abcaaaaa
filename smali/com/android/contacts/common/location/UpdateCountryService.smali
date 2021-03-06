.class public Lcom/android/contacts/common/location/UpdateCountryService;
.super Landroid/app/IntentService;
.source "UpdateCountryService.java"


# static fields
.field private static final ACTION_UPDATE_COUNTRY:Ljava/lang/String; = "saveCountry"

.field private static final KEY_INTENT_LOCATION:Ljava/lang/String; = "location"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/contacts/common/location/UpdateCountryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/location/UpdateCountryService;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/contacts/common/location/UpdateCountryService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private getCountryFromLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 70
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, "geocoder":Landroid/location/Geocoder;
    const/4 v7, 0x0

    .line 74
    .local v7, "country":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    .line 73
    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 81
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v7    # "country":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 78
    .restart local v7    # "country":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 79
    .local v8, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/contacts/common/location/UpdateCountryService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Exception occurred when getting geocoded country from location"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateCountry(Landroid/content/Context;Landroid/location/Location;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/location/UpdateCountryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "saveCountry"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    sget-object v4, Lcom/android/contacts/common/location/UpdateCountryService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onHandleIntent: could not handle null intent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 45
    :cond_0
    const-string/jumbo v4, "saveCountry"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    const-string/jumbo v4, "location"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 47
    .local v2, "location":Landroid/location/Location;
    invoke-virtual {p0}, Lcom/android/contacts/common/location/UpdateCountryService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/contacts/common/location/UpdateCountryService;->getCountryFromLocation(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "country":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 50
    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/location/UpdateCountryService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 56
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 57
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "preference_time_updated"

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 57
    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string/jumbo v4, "preference_current_country"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method
