.class Lcom/android/incallui/oneplus/record/OPRecordHelper$1;
.super Ljava/lang/Object;
.source "OPRecordHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/record/OPRecordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/oneplus/record/OPRecordHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/record/OPRecordHelper;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;->this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;->this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->-wrap0(Lcom/android/incallui/oneplus/record/OPRecordHelper;Ljava/lang/String;)V

    move-object v0, p2

    .line 124
    check-cast v0, Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;

    .line 125
    .local v0, "sb":Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;->this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/record/OPRecorderService$ServiceBinder;->getService()Lcom/android/incallui/oneplus/record/OPRecorderService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->-set0(Lcom/android/incallui/oneplus/record/OPRecordHelper;Lcom/android/incallui/oneplus/record/OPRecorderService;)Lcom/android/incallui/oneplus/record/OPRecorderService;

    .line 126
    iget-object v1, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;->this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-static {v1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->-get0(Lcom/android/incallui/oneplus/record/OPRecordHelper;)Lcom/android/incallui/oneplus/record/OPRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;->this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v1, v2}, Lcom/android/incallui/oneplus/record/OPRecorderService;->addUpdateListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 122
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/OPRecordHelper$1;->this$0:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->-wrap0(Lcom/android/incallui/oneplus/record/OPRecordHelper;Ljava/lang/String;)V

    .line 130
    return-void
.end method
