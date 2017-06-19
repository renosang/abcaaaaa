.class Lcom/android/dialer/SpeedDialListActivity$Record;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field contactId:J

.field name:Ljava/lang/String;

.field normalizedNumber:Ljava/lang/String;

.field number:Ljava/lang/String;

.field photoId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/dialer/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/dialer/SpeedDialListActivity$Record;->contactId:J

    .line 119
    return-void
.end method
