.class public Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OpSystemUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$style;->Oneplus_Theme_Material_Dialog_Alert:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->Oneplus_Theme_Material_Light_Dialog_Alert:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->applyFlags(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    return-void
.end method

.method public static applyFlags(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0xa0000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-object p0
.end method

.method public static registerDismissListener(Landroid/app/Dialog;)V
    .locals 1

    new-instance v0, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;

    invoke-direct {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpSystemUIDialog$DismissReceiver;->register()V

    return-void
.end method

.method public static setWindowOnTop(Landroid/app/Dialog;)V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7de

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    :goto_0
    return-void
.end method
