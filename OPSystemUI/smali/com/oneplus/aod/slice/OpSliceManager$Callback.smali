.class public Lcom/oneplus/aod/slice/OpSliceManager$Callback;
.super Ljava/lang/Object;
.source "OpSliceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/slice/OpSliceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field private mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

.field final synthetic this$0:Lcom/oneplus/aod/slice/OpSliceManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/slice/OpSliceManager;Lcom/oneplus/aod/slice/OpSliceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/slice/OpSliceManager$Callback;->this$0:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/aod/slice/OpSliceManager$Callback;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    return-void
.end method


# virtual methods
.method public updateUI()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/slice/OpSliceManager$Callback;->mSliceManager:Lcom/oneplus/aod/slice/OpSliceManager;

    invoke-static {p0}, Lcom/oneplus/aod/slice/OpSliceManager;->access$800(Lcom/oneplus/aod/slice/OpSliceManager;)V

    return-void
.end method
