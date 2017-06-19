.class public Lcom/android/dialer/list/ContentChangedFilter;
.super Landroid/view/View$AccessibilityDelegate;
.source "ContentChangedFilter.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/dialer/list/ContentChangedFilter;->mView:Landroid/view/View;

    .line 26
    return-void
.end method

.method public static addToParent(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 23
    .local v0, "parent":Landroid/view/View;
    new-instance v1, Lcom/android/dialer/list/ContentChangedFilter;

    invoke-direct {v1, p0}, Lcom/android/dialer/list/ContentChangedFilter;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/dialer/list/ContentChangedFilter;->mView:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 33
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
