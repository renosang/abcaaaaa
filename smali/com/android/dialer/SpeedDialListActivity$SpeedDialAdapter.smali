.class Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field final synthetic this$0:Lcom/android/dialer/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/SpeedDialListActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/SpeedDialListActivity;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 424
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 425
    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 423
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-get1(Lcom/android/dialer/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-get1(Lcom/android/dialer/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 435
    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 445
    if-nez p2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400e2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 449
    :cond_0
    const v0, 0x7f0e0201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 450
    .local v7, "index":Landroid/widget/TextView;
    const v0, 0x7f0e00e8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 451
    .local v8, "name":Landroid/widget/TextView;
    const v0, 0x7f0e012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 452
    .local v9, "number":Landroid/widget/TextView;
    const v0, 0x7f0e0202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    .line 453
    .local v1, "photo":Landroid/widget/QuickContactBadge;
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    invoke-static {v0}, Lcom/android/dialer/SpeedDialListActivity;->-get1(Lcom/android/dialer/SpeedDialListActivity;)Landroid/util/SparseArray;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dialer/SpeedDialListActivity$Record;

    .line 455
    .local v10, "record":Lcom/android/dialer/SpeedDialListActivity$Record;
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    if-eqz v10, :cond_1

    iget-object v0, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v0, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    :goto_0
    if-eqz v10, :cond_3

    iget-wide v2, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->contactId:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 467
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-object v0, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->name:Ljava/lang/String;

    .line 468
    iget-object v2, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->normalizedNumber:Ljava/lang/String;

    const/4 v3, 0x1

    .line 467
    invoke-direct {v6, v0, v2, v3}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    .local v6, "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 470
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-wide v2, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->photoId:J

    .line 471
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 470
    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 473
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->contactId:J

    .line 472
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 474
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 478
    .end local v6    # "request":Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 480
    return-object p2

    .line 461
    :cond_1
    if-eqz v10, :cond_2

    .line 462
    iget-object v0, v10, Lcom/android/dialer/SpeedDialListActivity$Record;->number:Ljava/lang/String;

    .line 461
    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    const v2, 0x7f0d0306

    invoke-virtual {v0, v2}, Lcom/android/dialer/SpeedDialListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 476
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_1
.end method
