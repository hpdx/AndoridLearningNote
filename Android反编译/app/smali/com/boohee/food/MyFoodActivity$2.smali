.class Lcom/boohee/food/MyFoodActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "MyFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/MyFoodActivity;->refreshCustomFoodCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/MyFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/MyFoodActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/boohee/food/MyFoodActivity$2;->this$0:Lcom/boohee/food/MyFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/boohee/food/MyFoodActivity$2;->this$0:Lcom/boohee/food/MyFoodActivity;

    const-string v2, "count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/boohee/food/MyFoodActivity;->customCount:I
    invoke-static {v1, v2}, Lcom/boohee/food/MyFoodActivity;->access$102(Lcom/boohee/food/MyFoodActivity;I)I

    .line 88
    iget-object v1, p0, Lcom/boohee/food/MyFoodActivity$2;->this$0:Lcom/boohee/food/MyFoodActivity;

    iget-object v1, v1, Lcom/boohee/food/MyFoodActivity;->CustomNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/food/MyFoodActivity$2;->this$0:Lcom/boohee/food/MyFoodActivity;

    # getter for: Lcom/boohee/food/MyFoodActivity;->customCount:I
    invoke-static {v2}, Lcom/boohee/food/MyFoodActivity;->access$100(Lcom/boohee/food/MyFoodActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
