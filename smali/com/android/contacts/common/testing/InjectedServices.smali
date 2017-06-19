.class public Lcom/android/contacts/common/testing/InjectedServices;
.super Ljava/lang/Object;
.source "InjectedServices.java"


# annotations
.annotation build Lcom/android/contacts/common/testing/NeededForTesting;
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    return-object v1
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mContentResolver:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method public setSystemService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/testing/InjectedServices;->mSystemServices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method
