.class public interface abstract Lcom/android/contacts/common/vcard/ImportVCardDialogFragment$Listener;
.super Ljava/lang/Object;
.source "ImportVCardDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onImportVCardConfirmed(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract onImportVCardDenied()V
.end method
