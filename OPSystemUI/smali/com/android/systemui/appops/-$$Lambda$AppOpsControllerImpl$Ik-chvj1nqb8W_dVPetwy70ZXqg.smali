.class public final synthetic Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iput p2, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$1:I

    iput p3, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iget v1, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$1:I

    iget v2, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$2:I

    iget-object p0, p0, Lcom/android/systemui/appops/-$$Lambda$AppOpsControllerImpl$Ik-chvj1nqb8W_dVPetwy70ZXqg;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->lambda$onOpNoted$1$AppOpsControllerImpl(IILjava/lang/String;)V

    return-void
.end method
