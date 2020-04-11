.class public final synthetic Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;->f$0:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    iput p2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;->f$1:I

    iput-object p3, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;->f$2:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;->f$0:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    iget v1, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;->f$1:I

    iget-object v2, p0, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$em2_OC1o7_7jKoBMws-2jkfrCFA;->f$2:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0$OPCustomShapePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;Landroid/view/View;)V

    return-void
.end method
