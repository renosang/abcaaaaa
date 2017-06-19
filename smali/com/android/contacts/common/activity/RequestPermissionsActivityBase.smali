.class public abstract Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;
.super Landroid/app/Activity;
.source "RequestPermissionsActivityBase.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final PERMISSIONS_REQUEST_ALL_PERMISSIONS:I = 0x1

.field public static final PREVIOUS_ACTIVITY_INTENT:Ljava/lang/String; = "previous_intent"

.field protected static final STARTED_PERMISSIONS_ACTIVITY:Ljava/lang/String; = "started_permissions_activity"


# instance fields
.field protected mPreviousActivityIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 148
    const-string/jumbo v1, "hasPermission"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 150
    :try_start_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 151
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    return v2

    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 156
    return v1

    .line 157
    :catchall_0
    move-exception v1

    .line 158
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 157
    throw v1
.end method

.method private isPermissionRequired(Ljava/lang/String;)Z
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getRequiredPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requestPermissions()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string/jumbo v3, "requestPermissions"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 122
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getDesiredPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 124
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 130
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Request permission activity was called even though all permissions are satisfied."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v1    # "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    .line 138
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 137
    throw v2

    .line 135
    .restart local v1    # "unsatisfiedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 136
    const/4 v3, 0x1

    .line 133
    invoke-static {p0, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 118
    return-void
.end method

.method protected static startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requiredPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "newActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 86
    invoke-static {p0, p1}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "started_permissions_activity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    const-string/jumbo v1, "previous_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    return v3

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    .line 101
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public checkSelfPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract getDesiredPermissions()[Ljava/lang/String;
.end method

.method protected abstract getRequiredPermissions()[Ljava/lang/String;
.end method

.method protected isAllGranted([Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResult"    # [I

    .prologue
    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 106
    aget v1, p2, v0

    if-eqz v1, :cond_0

    .line 107
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->isPermissionRequired(Ljava/lang/String;)Z

    move-result v1

    .line 106
    if-eqz v1, :cond_0

    .line 108
    return v2

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "previous_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->mPreviousActivityIntent:Landroid/content/Intent;

    .line 73
    if-nez p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/contacts/common/activity/RequestPermissionsActivityBase;->requestPermissions()V

    .line 66
    :cond_0
    return-void
.end method
