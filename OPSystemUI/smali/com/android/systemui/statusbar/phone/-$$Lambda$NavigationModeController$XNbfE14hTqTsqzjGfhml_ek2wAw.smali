.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;->f$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;->f$0:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$XNbfE14hTqTsqzjGfhml_ek2wAw;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->lambda$setModeOverlay$1$NavigationModeController(Ljava/lang/String;I)V

    return-void
.end method
