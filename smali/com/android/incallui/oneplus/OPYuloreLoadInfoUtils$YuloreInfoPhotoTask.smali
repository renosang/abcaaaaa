.class Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;
.super Landroid/os/AsyncTask;
.source "OPYuloreLoadInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YuloreInfoPhotoTask"
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

.field private mId:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;


# direct methods
.method public constructor <init>(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "call"    # Lcom/android/incallui/Call;
    .param p5, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mNumber:Ljava/lang/String;

    .line 353
    iput-object p3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mId:Ljava/lang/String;

    .line 354
    iput-object p4, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mCall:Lcom/android/incallui/Call;

    .line 355
    iput-object p5, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    .line 351
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 360
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    .line 362
    .local v0, "imageUri":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->getHttpPhoto(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 367
    invoke-static {}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "YuloreInfoPhotoTask onPostExecute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    if-eqz p1, :cond_0

    .line 369
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get2(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 370
    .local v2, "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 371
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 372
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iput-object v0, v2, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->photo:Landroid/graphics/drawable/Drawable;

    .line 373
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get2(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v2, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "YuloreInfoPhotoTask info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->this$0:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;->-get1(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v2, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;

    .line 376
    .local v1, "callback":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;
    if-eqz v1, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iput-object v2, v3, Lcom/android/incallui/CallerInfo;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    .line 378
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mCall:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoPhotoTask;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-interface {v1, v3, v4}, Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;->onYuloreInfoComplete(Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;)V

    .line 366
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "callback":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfoCallback;
    .end local v2    # "info":Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;
    :cond_0
    return-void
.end method
