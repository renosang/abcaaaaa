.class public Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;
.source "RequestDesiredPermissionsActivity.java"


# static fields
.field private static final DESIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "android.permission.READ_SMS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "started_permissions_activity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return v2

    .line 63
    :cond_0
    sget-object v1, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    .line 64
    const-class v2, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;

    .line 63
    invoke-static {p0, v1, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected getDesiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->DESIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->overridePendingTransition(II)V

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->finish()V

    .line 75
    invoke-virtual {p0, v2, v2}, Lcom/android/contacts/common/activity/RequestDesiredPermissionsActivity;->overridePendingTransition(II)V

    .line 69
    return-void
.end method
