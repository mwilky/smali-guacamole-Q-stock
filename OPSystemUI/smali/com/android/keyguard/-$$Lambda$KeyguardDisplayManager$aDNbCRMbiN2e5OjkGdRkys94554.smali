.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardDisplayManager$aDNbCRMbiN2e5OjkGdRkys94554;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardDisplayManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardDisplayManager$aDNbCRMbiN2e5OjkGdRkys94554;->f$0:Lcom/android/keyguard/KeyguardDisplayManager;

    iput p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardDisplayManager$aDNbCRMbiN2e5OjkGdRkys94554;->f$1:I

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardDisplayManager$aDNbCRMbiN2e5OjkGdRkys94554;->f$0:Lcom/android/keyguard/KeyguardDisplayManager;

    iget p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardDisplayManager$aDNbCRMbiN2e5OjkGdRkys94554;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/KeyguardDisplayManager;->lambda$showPresentation$0$KeyguardDisplayManager(ILandroid/content/DialogInterface;)V

    return-void
.end method
