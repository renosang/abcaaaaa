.class public Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;
.super Lcom/android/contacts/common/activity/RequestPermissionsActivity;
.source "RequestImportVCardPermissionsActivity.java"


# static fields
.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 28
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 27
    sput-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivity;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    sget-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 52
    const-class v1, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;

    .line 51
    invoke-static {p0, v0, v1}, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getDesiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/contacts/common/activity/RequestImportVCardPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method
