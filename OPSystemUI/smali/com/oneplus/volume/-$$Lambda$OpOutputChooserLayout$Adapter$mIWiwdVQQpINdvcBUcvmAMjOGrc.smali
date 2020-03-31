.class public final synthetic Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

.field private final synthetic f$1:Lcom/oneplus/volume/OpOutputChooserLayout$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;Lcom/oneplus/volume/OpOutputChooserLayout$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;->f$0:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

    iput-object p2, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;->f$1:Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;->f$0:Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;

    iget-object p0, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserLayout$Adapter$mIWiwdVQQpINdvcBUcvmAMjOGrc;->f$1:Lcom/oneplus/volume/OpOutputChooserLayout$Item;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/volume/OpOutputChooserLayout$Adapter;->lambda$getView$0$OpOutputChooserLayout$Adapter(Lcom/oneplus/volume/OpOutputChooserLayout$Item;Landroid/view/View;)V

    return-void
.end method
