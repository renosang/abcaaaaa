.class public Lcom/android/contacts/common/compat/PhoneAccountCompat;
.super Ljava/lang/Object;
.source "PhoneAccountCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/contacts/common/compat/PhoneAccountCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/compat/PhoneAccountCompat;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIconDrawable(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 64
    :cond_0
    return-object v1

    .line 67
    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->createIconDrawableMarshmallow(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 71
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-static {p0, p1}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->createIconDrawableLollipopMr1(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 74
    :cond_3
    return-object v1
.end method

.method private static createIconDrawableLollipopMr1(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 91
    :try_start_0
    const-class v2, Landroid/telecom/PhoneAccount;

    const-string/jumbo v3, "createIconDrawable"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 91
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/contacts/common/compat/PhoneAccountCompat;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unexpected exception when attempting to call android.telecom.PhoneAccount#createIconDrawable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    return-object v7

    .line 93
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    return-object v7
.end method

.method private static createIconDrawableMarshmallow(Landroid/telecom/PhoneAccount;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p0}, Lcom/android/contacts/common/compat/PhoneAccountCompat;->getIcon(Landroid/telecom/PhoneAccount;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 81
    .local v0, "accountIcon":Landroid/graphics/drawable/Icon;
    if-nez v0, :cond_0

    .line 82
    return-object v1

    .line 84
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getIcon(Landroid/telecom/PhoneAccount;)Landroid/graphics/drawable/Icon;
    .locals 2
    .param p0, "phoneAccount"    # Landroid/telecom/PhoneAccount;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    return-object v1

    .line 44
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    return-object v1
.end method
