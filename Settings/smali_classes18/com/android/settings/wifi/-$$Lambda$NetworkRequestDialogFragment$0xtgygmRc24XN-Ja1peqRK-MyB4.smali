.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field private final synthetic f$1:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;->f$1:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;->f$1:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$3$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
