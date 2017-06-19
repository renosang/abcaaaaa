.class public Lorg/codeaurora/wrapper/UiccPhoneBookController_Wrapper;
.super Ljava/lang/Object;
.source "UiccPhoneBookController_Wrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdnRecordsCapacityForSubscriber(I)[I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 40
    :try_start_0
    const-string/jumbo v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 39
    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 41
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsCapacityForSubscriber(I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 44
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 46
    :cond_0
    return-object v3
.end method
