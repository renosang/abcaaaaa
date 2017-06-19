.class public Lcom/oneplus/contacts/common/list/SimpleRawContact;
.super Ljava/lang/Object;
.source "SimpleRawContact.java"


# instance fields
.field public accountId:J

.field public rawContactId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "rawContactId"    # J
    .param p3, "accountId"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/oneplus/contacts/common/list/SimpleRawContact;->rawContactId:J

    .line 26
    iput-wide p3, p0, Lcom/oneplus/contacts/common/list/SimpleRawContact;->accountId:J

    .line 24
    return-void
.end method
