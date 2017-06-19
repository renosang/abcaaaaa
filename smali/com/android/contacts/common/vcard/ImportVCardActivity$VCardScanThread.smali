.class Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;Ljava/io/File;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/contacts/common/vcard/ImportVCardActivity;
    .param p2, "dialog"    # Landroid/app/ProgressDialog;
    .param p3, "sdcardDirectory"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 822
    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 823
    iput-object p2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 824
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 825
    iput-boolean v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 826
    iput-object p3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 827
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 829
    const-string/jumbo v1, "power"

    .line 828
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 832
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "VCardImport"

    .line 831
    const v2, 0x20000006

    .line 830
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 822
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;Ljava/util/Vector;)V
    .locals 13
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    const/4 v12, 0x0

    .line 927
    iget-boolean v7, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v7, :cond_0

    .line 928
    new-instance v7, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v7, p0, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;)V

    throw v7

    .line 932
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 933
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_2

    .line 934
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "currentDirectoryPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".android_secure"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, "secureDirectoryPath":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 938
    const-string/jumbo v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listFiles() returned null (directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_1
    return-void

    .line 942
    .end local v1    # "currentDirectoryPath":Ljava/lang/String;
    .end local v5    # "secureDirectoryPath":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_7

    aget-object v2, v4, v7

    .line 943
    .local v2, "file":Ljava/io/File;
    iget-boolean v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v9, :cond_3

    .line 944
    new-instance v7, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    invoke-direct {v7, p0, v12}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;)V

    throw v7

    .line 946
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "canonicalPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 942
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 951
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 954
    invoke-direct {p0, v2, p2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;Ljava/util/Vector;)V

    goto :goto_1

    .line 955
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".vcf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 956
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    .line 955
    if-eqz v9, :cond_4

    .line 957
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 958
    .local v3, "fileName":Ljava/lang/String;
    new-instance v6, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    .line 959
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 958
    invoke-direct {v6, v3, v0, v10, v11}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 960
    .local v6, "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    invoke-virtual {p2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    .end local v0    # "canonicalPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "vcardFile":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    :cond_7
    return-void
.end method

.method private startVCardSelectAndImport(Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 913
    .local v0, "size":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-wrap4(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V

    .line 902
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get3(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$4;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;Ljava/util/Vector;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 965
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 970
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 969
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 837
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 839
    .local v0, "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 840
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-direct {p0, v5, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;Ljava/util/Vector;)V
    :try_end_0
    .catch Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 849
    :goto_0
    iget-boolean v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v5, :cond_0

    .line 850
    const/4 v0, 0x0

    .line 853
    .end local v0    # "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get3(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 862
    iget-boolean v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v5, :cond_1

    .line 863
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get3(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$2;

    invoke-direct {v6, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$2;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    :goto_1
    return-void

    .line 843
    .restart local v0    # "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    :catch_0
    move-exception v3

    .line 844
    .local v3, "e":Ljava/io/IOException;
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 841
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 842
    .local v2, "e":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 845
    .end local v2    # "e":Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catchall_0
    move-exception v5

    .line 846
    iget-object v6, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 845
    throw v5

    .line 877
    .end local v0    # "allVCardFileList":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;>;"
    :cond_1
    iget-boolean v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v5, :cond_2

    .line 878
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 880
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    .line 881
    .local v4, "size":I
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    .line 882
    .local v1, "context":Landroid/content/Context;
    if-nez v4, :cond_3

    .line 883
    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/common/vcard/ImportVCardActivity;

    invoke-static {v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->-get3(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread$3;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 897
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;->startVCardSelectAndImport(Ljava/util/Vector;)V

    goto :goto_1
.end method
