.class public final Lcom/android/contacts/common/compat/CompatUtils;
.super Ljava/lang/Object;
.source "CompatUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_ASSERT:I = 0x4

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/common/compat/CompatUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/compat/CompatUtils;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPrioritizedMimeType()Z
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 88
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "instance"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "methodName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 245
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_0
    return-object v6

    .line 249
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/contacts/common/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected exception when invoking method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 259
    const-string/jumbo v5, "#"

    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 259
    const-string/jumbo v5, " at runtime"

    .line 258
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    return-object v6

    .line 254
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/contacts/common/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not invoke method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v6
.end method

.method public static isAssertQueryCompat(Lcom/android/contacts/common/model/CPOWrapper;)Z
    .locals 2
    .param p0, "cpoWrapper"    # Lcom/android/contacts/common/model/CPOWrapper;

    .prologue
    const/16 v1, 0x17

    .line 78
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isAssertQuery()Z

    move-result v0

    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCallSubjectCompatible()Z
    .locals 2

    .prologue
    .line 132
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    .line 133
    const/16 v1, 0x17

    .line 132
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    return v5

    .line 191
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v2, 0x1

    return v2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/contacts/common/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected exception when checking if class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exists at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    const-string/jumbo v4, "runtime"

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    return v5

    .line 193
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return v5
.end method

.method public static isDefaultDialerCompatible()Z
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    return v0
.end method

.method public static isDeleteCompat(Lcom/android/contacts/common/model/CPOWrapper;)Z
    .locals 2
    .param p0, "cpoWrapper"    # Lcom/android/contacts/common/model/CPOWrapper;

    .prologue
    const/16 v1, 0x17

    .line 69
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result v0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInsertCompat(Lcom/android/contacts/common/model/CPOWrapper;)Z
    .locals 3
    .param p0, "cpoWrapper"    # Lcom/android/contacts/common/model/CPOWrapper;

    .prologue
    const/16 v2, 0x17

    const/4 v0, 0x1

    .line 49
    invoke-static {v2}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v0

    return v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLollipopCompatible()Z
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 271
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLollipopMr1Compatible()Z
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 153
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMSIMCompatible()Z
    .locals 2

    .prologue
    .line 99
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    .line 100
    const/16 v1, 0x16

    .line 99
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMarshmallowCompatible()Z
    .locals 2

    .prologue
    .line 164
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    .line 165
    const/16 v1, 0x17

    .line 164
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "methodName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    return v5

    .line 219
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v2, 0x1

    return v2

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/contacts/common/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected exception when checking if method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    const-string/jumbo v4, " exists at runtime"

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    return v5

    .line 221
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v2, Lcom/android/contacts/common/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v5
.end method

.method public static isNCompatible()Z
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    return v0
.end method

.method public static isUpdateCompat(Lcom/android/contacts/common/model/CPOWrapper;)Z
    .locals 2
    .param p0, "cpoWrapper"    # Lcom/android/contacts/common/model/CPOWrapper;

    .prologue
    const/16 v1, 0x17

    .line 59
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isUpdate()Z

    move-result v0

    return v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/CPOWrapper;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCompatible()Z
    .locals 2

    .prologue
    .line 110
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    .line 111
    const/16 v1, 0x17

    .line 110
    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoPresenceCompatible()Z
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 121
    invoke-static {v1}, Lcom/android/contacts/common/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
