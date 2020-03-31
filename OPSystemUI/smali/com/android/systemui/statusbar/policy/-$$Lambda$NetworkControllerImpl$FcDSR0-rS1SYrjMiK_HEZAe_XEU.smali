.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$FcDSR0-rS1SYrjMiK_HEZAe_XEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$FcDSR0-rS1SYrjMiK_HEZAe_XEU;->f$0:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$NetworkControllerImpl$FcDSR0-rS1SYrjMiK_HEZAe_XEU;->f$0:Landroid/app/AlertDialog;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->lambda$opActionTetherErrorAlertDialog$1(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
