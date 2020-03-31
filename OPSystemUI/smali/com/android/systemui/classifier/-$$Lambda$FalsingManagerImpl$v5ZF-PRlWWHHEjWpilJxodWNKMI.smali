.class public final synthetic Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/FalsingManagerImpl;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    iput p2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$1:I

    iput p3, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$4:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    iget v1, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$1:I

    iget v2, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/classifier/-$$Lambda$FalsingManagerImpl$v5ZF-PRlWWHHEjWpilJxodWNKMI;->f$4:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->lambda$isFalseTouch$2$FalsingManagerImpl(IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
