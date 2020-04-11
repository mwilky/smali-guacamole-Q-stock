.class Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;
.super Ljava/lang/Object;
.source "SoftwareInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->onBindViewHolder(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field final synthetic val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    iput p3, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->access$000(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$holder:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
