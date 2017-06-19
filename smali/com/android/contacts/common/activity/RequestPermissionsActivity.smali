.class public Lcom/android/contacts/common/activity/RequestPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;
.source "RequestPermissionsActivity.java"


# static fields
.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    sget-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 58
    const-class v1, Lcom/android/contacts/common/activity/RequestPermissionsActivity;

    .line 57
    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getDesiredPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "android.permission.READ_SMS"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 47
    return-object v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 64
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->isAllGranted([Ljava/lang/String;[I)Z

    move-result v0

    .line 64
    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->finish()V

    .line 69
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->overridePendingTransition(II)V

    .line 63
    :goto_0
    return-void

    .line 71
    :cond_0
    const v0, 0x7f0d0186

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;->finish()V

    goto :goto_0
.end method
