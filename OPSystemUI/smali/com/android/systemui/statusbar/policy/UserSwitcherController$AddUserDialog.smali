.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;
.super Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddUserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/systemui/R$string;->user_add_user_title:I

    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;II)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    sget v0, Lcom/android/systemui/R$string;->user_add_user_message_short:I

    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;II)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x1040000

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x104000a

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1, p0}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
