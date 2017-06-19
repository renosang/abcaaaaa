.class public final Lcom/android/dialer/calllog/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callAccountIcon:Landroid/widget/ImageView;

.field public final callAccountLabel:Landroid/widget/TextView;

.field public final callLocationAndDate:Landroid/widget/TextView;

.field public final callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

.field public final callTypeView:Landroid/view/View;

.field public final nameView:Landroid/widget/TextView;

.field public final voicemailTranscriptionView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "callTypeView"    # Landroid/view/View;
    .param p3, "callTypeIcons"    # Lcom/android/dialer/calllog/CallTypeIconsView;
    .param p4, "callLocationAndDate"    # Landroid/widget/TextView;
    .param p5, "voicemailTranscriptionView"    # Landroid/widget/TextView;
    .param p6, "callAccountIcon"    # Landroid/widget/ImageView;
    .param p7, "callAccountLabel"    # Landroid/widget/TextView;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 43
    iput-object p2, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeView:Landroid/view/View;

    .line 44
    iput-object p3, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    .line 45
    iput-object p4, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    .line 47
    iput-object p6, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountIcon:Landroid/widget/ImageView;

    .line 48
    iput-object p7, p0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;->callAccountLabel:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/android/dialer/calllog/PhoneCallDetailsViews;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    .line 70
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/android/dialer/calllog/PhoneCallDetailsViews;
    .locals 8
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v0, Lcom/android/dialer/calllog/PhoneCallDetailsViews;

    const v1, 0x7f0e00e8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0e00e9

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    const v3, 0x7f0e00ea

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/calllog/CallTypeIconsView;

    .line 62
    const v4, 0x7f0e00ed

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    const v5, 0x7f0e00ef

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 64
    const v6, 0x7f0e00eb

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 65
    const v7, 0x7f0e00ee

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 59
    invoke-direct/range {v0 .. v7}, Lcom/android/dialer/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/view/View;Lcom/android/dialer/calllog/CallTypeIconsView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0
.end method
