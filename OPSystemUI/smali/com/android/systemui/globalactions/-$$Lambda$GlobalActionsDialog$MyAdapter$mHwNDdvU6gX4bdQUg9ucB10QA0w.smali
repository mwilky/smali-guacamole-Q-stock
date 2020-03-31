.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iput p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iget p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$MyAdapter$mHwNDdvU6gX4bdQUg9ucB10QA0w;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->lambda$getView$0$GlobalActionsDialog$MyAdapter(ILandroid/view/View;)V

    return-void
.end method
