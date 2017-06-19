.class public Lcom/android/incallui/InCallUiStateNotifier;
.super Ljava/lang/Object;
.source "InCallUiStateNotifier.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mInCallUiStateNotifierListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallUiStateNotifierListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDisplayOn:Z

.field private mIsInBackground:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    .line 80
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallUiStateNotifier;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallUiStateNotifier;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallUiStateNotifier;->sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/incallui/InCallUiStateNotifier;

    invoke-direct {v0}, Lcom/android/incallui/InCallUiStateNotifier;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallUiStateNotifier;->sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;

    .line 90
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUiStateNotifier;->sInCallUiStateNotifier:Lcom/android/incallui/InCallUiStateNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDisplayOn(I)Z
    .locals 2
    .param p0, "displayState"    # I

    .prologue
    const/4 v0, 0x1

    .line 155
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 156
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUiShowing()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyOnUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallUiStateNotifierListener;

    .line 124
    .local v0, "listener":Lcom/android/incallui/InCallUiStateNotifierListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallUiStateNotifierListener;->onUiShowing(Z)V

    goto :goto_0

    .line 121
    .end local v0    # "listener":Lcom/android/incallui/InCallUiStateNotifierListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallUiStateNotifierListener;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    const-string/jumbo v3, "onDisplayChanged Ignoring..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 213
    .local v0, "displayState":I
    iget-object v3, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v0

    .line 218
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged displayState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    const-string/jumbo v4, " displayId: "

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v2

    .line 224
    .local v2, "wasShowing":Z
    invoke-static {v0}, Lcom/android/incallui/InCallUiStateNotifier;->isDisplayOn(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    .line 227
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v1

    .line 229
    .local v1, "isShowing":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisplayChanged wasShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    if-eq v2, v1, :cond_2

    .line 232
    iget-boolean v3, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallUiStateNotifier;->notifyOnUiShowing(Z)V

    .line 202
    :cond_2
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v1

    .line 169
    .local v1, "wasShowing":Z
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsInBackground:Z

    .line 172
    invoke-direct {p0}, Lcom/android/incallui/InCallUiStateNotifier;->isUiShowing()Z

    move-result v0

    .line 174
    .local v0, "isShowing":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUiShowing wasShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    if-eq v1, v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallUiStateNotifier;->notifyOnUiShowing(Z)V

    .line 164
    :cond_0
    return-void

    .line 169
    .end local v0    # "isShowing":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public removeListener(Lcom/android/incallui/InCallUiStateNotifierListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallUiStateNotifierListener;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    :goto_0
    return-void

    .line 112
    :cond_0
    const-string/jumbo v0, "Can\'t remove null listener"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUp(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 71
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 73
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    .line 72
    invoke-static {v0}, Lcom/android/incallui/InCallUiStateNotifier;->isDisplayOn(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUp mIsDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mIsDisplayOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 134
    iput-object v1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 135
    iput-object v1, p0, Lcom/android/incallui/InCallUiStateNotifier;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcom/android/incallui/InCallUiStateNotifier;->mInCallUiStateNotifierListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    return-void
.end method
