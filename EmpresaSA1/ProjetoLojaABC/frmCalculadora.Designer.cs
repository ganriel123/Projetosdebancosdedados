
namespace ProjetoLojaABC
{
    partial class frmCalculadora
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCalculadora));
            this.lblV1 = new System.Windows.Forms.Label();
            this.lblV2 = new System.Windows.Forms.Label();
            this.gpbOperaçoes = new System.Windows.Forms.GroupBox();
            this.rdbDivisao = new System.Windows.Forms.RadioButton();
            this.rdbMultiplicaçao = new System.Windows.Forms.RadioButton();
            this.rdbSubtraçao = new System.Windows.Forms.RadioButton();
            this.rdbAdiçao = new System.Windows.Forms.RadioButton();
            this.txtV1 = new System.Windows.Forms.TextBox();
            this.txtV2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblToTal = new System.Windows.Forms.Label();
            this.btnCalcular = new System.Windows.Forms.Button();
            this.btnSair = new System.Windows.Forms.Button();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.gpbOperaçoes.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblV1
            // 
            this.lblV1.AutoSize = true;
            this.lblV1.Location = new System.Drawing.Point(41, 49);
            this.lblV1.Name = "lblV1";
            this.lblV1.Size = new System.Drawing.Size(51, 13);
            this.lblV1.TabIndex = 0;
            this.lblV1.Text = "Variavel1";
            this.lblV1.Click += new System.EventHandler(this.label1_Click);
            // 
            // lblV2
            // 
            this.lblV2.AutoSize = true;
            this.lblV2.Location = new System.Drawing.Point(41, 101);
            this.lblV2.Name = "lblV2";
            this.lblV2.Size = new System.Drawing.Size(51, 13);
            this.lblV2.TabIndex = 1;
            this.lblV2.Text = "Variavel2";
            this.lblV2.Click += new System.EventHandler(this.label2_Click);
            // 
            // gpbOperaçoes
            // 
            this.gpbOperaçoes.Controls.Add(this.rdbDivisao);
            this.gpbOperaçoes.Controls.Add(this.rdbMultiplicaçao);
            this.gpbOperaçoes.Controls.Add(this.rdbSubtraçao);
            this.gpbOperaçoes.Controls.Add(this.rdbAdiçao);
            this.gpbOperaçoes.Location = new System.Drawing.Point(255, 160);
            this.gpbOperaçoes.Name = "gpbOperaçoes";
            this.gpbOperaçoes.Size = new System.Drawing.Size(188, 214);
            this.gpbOperaçoes.TabIndex = 2;
            this.gpbOperaçoes.TabStop = false;
            this.gpbOperaçoes.Text = "Operações";
            this.gpbOperaçoes.Enter += new System.EventHandler(this.gpbOperaçoes_Enter);
            // 
            // rdbDivisao
            // 
            this.rdbDivisao.AutoSize = true;
            this.rdbDivisao.Location = new System.Drawing.Point(6, 145);
            this.rdbDivisao.Name = "rdbDivisao";
            this.rdbDivisao.Size = new System.Drawing.Size(80, 17);
            this.rdbDivisao.TabIndex = 6;
            this.rdbDivisao.TabStop = true;
            this.rdbDivisao.Text = "Divisão ( / )";
            this.rdbDivisao.UseVisualStyleBackColor = true;
            // 
            // rdbMultiplicaçao
            // 
            this.rdbMultiplicaçao.AutoSize = true;
            this.rdbMultiplicaçao.Location = new System.Drawing.Point(6, 111);
            this.rdbMultiplicaçao.Name = "rdbMultiplicaçao";
            this.rdbMultiplicaçao.Size = new System.Drawing.Size(106, 17);
            this.rdbMultiplicaçao.TabIndex = 5;
            this.rdbMultiplicaçao.TabStop = true;
            this.rdbMultiplicaçao.Text = "Multiplicação ( * )";
            this.rdbMultiplicaçao.UseVisualStyleBackColor = true;
            // 
            // rdbSubtraçao
            // 
            this.rdbSubtraçao.AutoSize = true;
            this.rdbSubtraçao.Location = new System.Drawing.Point(6, 77);
            this.rdbSubtraçao.Name = "rdbSubtraçao";
            this.rdbSubtraçao.Size = new System.Drawing.Size(92, 17);
            this.rdbSubtraçao.TabIndex = 4;
            this.rdbSubtraçao.TabStop = true;
            this.rdbSubtraçao.Text = "Subtração ( - )";
            this.rdbSubtraçao.UseVisualStyleBackColor = true;
            // 
            // rdbAdiçao
            // 
            this.rdbAdiçao.AutoSize = true;
            this.rdbAdiçao.Location = new System.Drawing.Point(6, 38);
            this.rdbAdiçao.Name = "rdbAdiçao";
            this.rdbAdiçao.Size = new System.Drawing.Size(73, 17);
            this.rdbAdiçao.TabIndex = 3;
            this.rdbAdiçao.TabStop = true;
            this.rdbAdiçao.Text = "Adição (+)";
            this.rdbAdiçao.UseVisualStyleBackColor = true;
            this.rdbAdiçao.CheckedChanged += new System.EventHandler(this.rdbAdiçao_CheckedChanged);
            // 
            // txtV1
            // 
            this.txtV1.Location = new System.Drawing.Point(98, 46);
            this.txtV1.Name = "txtV1";
            this.txtV1.Size = new System.Drawing.Size(100, 20);
            this.txtV1.TabIndex = 1;
            this.txtV1.TextChanged += new System.EventHandler(this.txtV1_TextChanged);
            // 
            // txtV2
            // 
            this.txtV2.Location = new System.Drawing.Point(98, 98);
            this.txtV2.Name = "txtV2";
            this.txtV2.Size = new System.Drawing.Size(100, 20);
            this.txtV2.TabIndex = 2;
            this.txtV2.TextChanged += new System.EventHandler(this.txtV2_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(550, 49);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Resultado";
            // 
            // lblToTal
            // 
            this.lblToTal.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblToTal.Location = new System.Drawing.Point(553, 81);
            this.lblToTal.Name = "lblToTal";
            this.lblToTal.Size = new System.Drawing.Size(135, 33);
            this.lblToTal.TabIndex = 7;
            this.lblToTal.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnCalcular
            // 
            this.btnCalcular.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnCalcular.Location = new System.Drawing.Point(557, 160);
            this.btnCalcular.Name = "btnCalcular";
            this.btnCalcular.Size = new System.Drawing.Size(131, 55);
            this.btnCalcular.TabIndex = 8;
            this.btnCalcular.Text = "Calcular";
            this.btnCalcular.UseVisualStyleBackColor = false;
            this.btnCalcular.Click += new System.EventHandler(this.btnCalcular_Click);
            // 
            // btnSair
            // 
            this.btnSair.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnSair.Location = new System.Drawing.Point(557, 319);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(131, 55);
            this.btnSair.TabIndex = 9;
            this.btnSair.Text = "Sair";
            this.btnSair.UseVisualStyleBackColor = false;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // btnLimpar
            // 
            this.btnLimpar.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnLimpar.Location = new System.Drawing.Point(557, 237);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(131, 55);
            this.btnLimpar.TabIndex = 9;
            this.btnLimpar.Text = "Limpar";
            this.btnLimpar.UseVisualStyleBackColor = false;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // frmCalculadora
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnLimpar);
            this.Controls.Add(this.btnSair);
            this.Controls.Add(this.btnCalcular);
            this.Controls.Add(this.lblToTal);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtV2);
            this.Controls.Add(this.txtV1);
            this.Controls.Add(this.gpbOperaçoes);
            this.Controls.Add(this.lblV2);
            this.Controls.Add(this.lblV1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MinimizeBox = false;
            this.Name = "frmCalculadora";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmCalculadora";
            this.Load += new System.EventHandler(this.frmCalculadora_Load);
            this.gpbOperaçoes.ResumeLayout(false);
            this.gpbOperaçoes.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblV1;
        private System.Windows.Forms.Label lblV2;
        private System.Windows.Forms.GroupBox gpbOperaçoes;
        private System.Windows.Forms.TextBox txtV1;
        private System.Windows.Forms.TextBox txtV2;
        private System.Windows.Forms.RadioButton rdbDivisao;
        private System.Windows.Forms.RadioButton rdbMultiplicaçao;
        private System.Windows.Forms.RadioButton rdbSubtraçao;
        private System.Windows.Forms.RadioButton rdbAdiçao;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblToTal;
        private System.Windows.Forms.Button btnCalcular;
        private System.Windows.Forms.Button btnSair;
        private System.Windows.Forms.Button btnLimpar;
    }
}