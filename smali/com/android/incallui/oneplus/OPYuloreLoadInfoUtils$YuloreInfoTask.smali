.class Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;
.super Landroid/os/AsyncTask;
.source "OPYuloreLoadInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YuloreInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mCallerInfo:Lcom/android/incallui/CallerInfo;

.field final synthetic this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;


# direct methods
.method public constructor <init>(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
    .param p2, "call"    # Lcom/android/incallui/Call;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    .line 312
    iput-object p3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    .line 310
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 317
    const/4 v2, 0x0

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "number":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    iget-object v2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-wrap0(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Ljava/lang/String;I)Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 323
    invoke-static {}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "YuloreInfoTask onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-eqz p1, :cond_1

    move-object v8, p1

    .line 325
    check-cast v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 326
    .local v8, "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get2(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get1(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;

    .line 328
    .local v6, "callback":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;
    if-eqz v6, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iput-object v8, v0, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 330
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-interface {v6, v0, v1}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;->onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 331
    iget-object v0, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->logo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    iget-object v1, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->logo:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    iget-object v5, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-wrap1(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 322
    .end local v6    # "callback":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;
    .end local v8    # "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get1(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;

    .line 337
    .local v7, "callbacks":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;
    if-eqz v7, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-interface {v7, v0, v1}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;->onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    goto :goto_0
.end method
