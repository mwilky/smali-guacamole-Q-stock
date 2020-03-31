.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$G0EMymZcEbjMZR18rSqGXuoXaF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$G0EMymZcEbjMZR18rSqGXuoXaF8;->f$0:Lcom/android/keyguard/KeyguardPatternView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$G0EMymZcEbjMZR18rSqGXuoXaF8;->f$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->lambda$startDisappearAnimation$1$KeyguardPatternView()V

    return-void
.end method
