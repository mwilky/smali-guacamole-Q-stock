.class Lcom/android/settings/security/CredentialStorage$ResetDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settings/security/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/security/CredentialStorage;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x1040014

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1204df

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/security/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/security/CredentialStorage;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    iget-object v1, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-static {v1}, Lcom/android/settings/security/CredentialStorage;->access$100(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;

    iget-object v2, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$1;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/security/CredentialStorage;->access$300(Lcom/android/settings/security/CredentialStorage;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CredentialStorage"

    const-string v1, "Failed to launch credential confirmation for a secure user."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings/security/CredentialStorage;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
