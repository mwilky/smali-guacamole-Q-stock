.class public final Lcom/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PAYMENT_APP_MAX_CAPTION_LENGTH:I = 0x28

.field public static final TAG:Ljava/lang/String; = "PaymentDefaultDialog"


# instance fields
.field private mBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mNewDefault:Landroid/content/ComponentName;

.field public noNeedConfirmPkgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "com.finshell.wallet"

    const-string v1, "cn.oneplus.wallet"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->noNeedConfirmPkgs:[Ljava/lang/String;

    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "PaymentDefaultDialog"

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v2, "payment"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t support defaults for category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v7, v6, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, v6

    :cond_3
    iget-boolean v7, v6, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v7, :cond_4

    move-object v3, v6

    :cond_4
    goto :goto_0

    :cond_5
    const-string v5, "Component "

    if-nez v2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not a registered payment service."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    iget-object v6, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is already default."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->noNeedConfirmPkgs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v1

    :goto_1
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    iget-object v11, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " no need confirm dialog."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v5, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    return v1

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x7f120b27

    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v5, 0x1

    if-nez v3, :cond_a

    const v7, 0x7f120b25

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_a
    const v7, 0x7f120b26

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    iget-object v1, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_2
    const v1, 0x7f121a07

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v1, 0x7f120b4b

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setupAlert()V

    return v5

    :cond_b
    :goto_3
    const-string v2, "Component or category are null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->finish()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "component"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    const-string v2, "category"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/settings/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->finish()V

    :cond_0
    return-void
.end method
