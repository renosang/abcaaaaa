.class public Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;
.super Ljava/lang/Object;
.source "DcTracker.java"


# instance fields
.field private mDataAllowFailReasonSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReason;->mDataAllowFailReasonSet:Ljava/util/HashSet;

    .line 173
    return-void
.end method
