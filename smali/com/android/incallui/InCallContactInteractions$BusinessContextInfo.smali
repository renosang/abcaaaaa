.class public Lcom/android/incallui/InCallContactInteractions$BusinessContextInfo;
.super Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;
.source "InCallContactInteractions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallContactInteractions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessContextInfo"
.end annotation


# instance fields
.field detail:Ljava/lang/String;

.field heading:Ljava/lang/String;

.field iconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/android/incallui/InCallContactInteractions$ContactContextInfo;-><init>()V

    return-void
.end method
