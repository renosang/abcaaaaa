.class Lcom/android/incallui/StatusBarNotifier$NotificationInfos;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationInfos"
.end annotation


# instance fields
.field largeIcon:Landroid/graphics/Bitmap;

.field mWhen:J

.field message:Ljava/lang/String;

.field smallIcon:I

.field state:I

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;

.field title:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/StatusBarNotifier;IIILandroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;
    .param p2, "state"    # I
    .param p3, "type"    # I
    .param p4, "smallIcon"    # I
    .param p5, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "mWhen"    # J
    .param p9, "message"    # Ljava/lang/String;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    iput p2, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->state:I

    .line 1159
    iput p3, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->type:I

    .line 1160
    iput p4, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->smallIcon:I

    .line 1161
    iput-object p5, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->largeIcon:Landroid/graphics/Bitmap;

    .line 1162
    iput-object p6, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->title:Ljava/lang/String;

    .line 1163
    iput-wide p7, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->mWhen:J

    .line 1164
    iput-object p9, p0, Lcom/android/incallui/StatusBarNotifier$NotificationInfos;->message:Ljava/lang/String;

    .line 1157
    return-void
.end method
