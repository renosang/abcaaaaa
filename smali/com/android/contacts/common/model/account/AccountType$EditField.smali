.class public final Lcom/android/contacts/common/model/account/AccountType$EditField;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditField"
.end annotation


# instance fields
.field public column:Ljava/lang/String;

.field public inputType:I

.field public longForm:Z

.field public minLines:I

.field public optional:Z

.field public shortForm:Z

.field public titleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 447
    iput p2, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "titleRes"    # I
    .param p3, "inputType"    # I

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;I)V

    .line 452
    iput p3, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 450
    return-void
.end method


# virtual methods
.method public isMultiLine()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 476
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setLongForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "longForm"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 467
    return-object p0
.end method

.method public setMinLines(I)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "minLines"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    .line 472
    return-object p0
.end method

.method public setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "optional"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 457
    return-object p0
.end method

.method public setShortForm(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;
    .locals 0
    .param p1, "shortForm"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 462
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType$EditField;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    const-string/jumbo v1, " column="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    const-string/jumbo v1, " titleRes="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 484
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->titleRes:I

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    const-string/jumbo v1, " inputType="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->inputType:I

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    const-string/jumbo v1, " minLines="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    iget v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->minLines:I

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 487
    const-string/jumbo v1, " optional="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 487
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->optional:Z

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    const-string/jumbo v1, " shortForm="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->shortForm:Z

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    const-string/jumbo v1, " longForm="

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    iget-boolean v1, p0, Lcom/android/contacts/common/model/account/AccountType$EditField;->longForm:Z

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
