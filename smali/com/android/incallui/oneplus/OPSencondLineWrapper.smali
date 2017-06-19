.class public Lcom/android/incallui/oneplus/OPSencondLineWrapper;
.super Ljava/lang/Object;
.source "OPSencondLineWrapper.java"


# instance fields
.field private isShowElapsedTime:Z

.field private isShowNumber:Z

.field private view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowNumber:Z

    .line 26
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->view:Landroid/widget/TextView;

    .line 25
    return-void
.end method


# virtual methods
.method public ShowElapsedTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowElapsedTime:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowNumber:Z

    .line 60
    return-void
.end method

.method public cancelShowTime()V
    .locals 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowElapsedTime:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->view:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->view:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowElapsedTime:Z

    .line 48
    :cond_0
    return-void
.end method

.method public resetWrapper()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowElapsedTime:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/OPSencondLineWrapper;->isShowNumber:Z

    .line 67
    return-void
.end method
