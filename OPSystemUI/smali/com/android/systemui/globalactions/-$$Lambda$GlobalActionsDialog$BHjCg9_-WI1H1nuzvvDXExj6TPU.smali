.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;->f$1:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method


# virtual methods
.method public final onUnlockMethodStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$BHjCg9_-WI1H1nuzvvDXExj6TPU;->f$1:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$new$0$GlobalActionsDialog(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    return-void
.end method
