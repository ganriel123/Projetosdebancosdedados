using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProjetoLojaABC
{
    public partial class frmCalculadora : Form
    {
        public frmCalculadora()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void btnCalcular_Click(object sender, EventArgs e)
        {
            double num1, num2, resultado = 0;

            try
            {
                num1 = Convert.ToDouble(txtV1.Text);
                num2 = Convert.ToDouble(txtV2.Text);

                if (rdbAdiçao.Checked || rdbSubtraçao.Checked || rdbMultiplicaçao.Checked || rdbDivisao.Checked)
                {

                    if (rdbAdiçao.Checked)
                    {
                        resultado = num1 + num2;

                    }
                    lblToTal.Text = resultado.ToString();

                    if (rdbSubtraçao.Checked)
                    {
                        resultado = num1 - num2;

                    }
                    lblToTal.Text = resultado.ToString();

                    if (rdbMultiplicaçao.Checked)
                    {
                        resultado = num1 * num2;

                    }
                    lblToTal.Text = resultado.ToString();

                    if (rdbDivisao.Checked)
                    {
                        resultado = num1 / num2;

                    }
                    if (num2 == 0 && num1 == 0)
                    {
                        MessageBox.Show("Impossivel Dividir Por Zero!!!!",
                        "Mensagem do sistema",
                        MessageBoxButtons.YesNoCancel,
                        MessageBoxIcon.Warning,
                        MessageBoxDefaultButton.Button3);
                    }
                    else
                    {
                        resultado = num1 / num2;
                    }
                    lblToTal.Text = resultado.ToString();
                    limparCamposCalcular();
                }
                else
                {
                    MessageBox.Show("Por favor escolher uma operação",
                        "Mensagem do sistema",
                        MessageBoxButtons.YesNoCancel,
                        MessageBoxIcon.Warning,
                        MessageBoxDefaultButton.Button3);
                }
            }
            catch (Exception)
            {
                MessageBox.Show("favor inserir somente números!!!",
                       "Mensagem do sistema",
                       MessageBoxButtons.YesNoCancel,
                       MessageBoxIcon.Warning,
                       MessageBoxDefaultButton.Button3);

                limparCampos();
            }
        }


        // criando um metodo para limpar o conteúdo
        public void limparCamposCalcular()
        {
            txtV1.Text = "";
            txtV2.Clear();
            

            rdbAdiçao.Checked = false;
            rdbDivisao.Checked = false;
            rdbMultiplicaçao.Checked = false;
            rdbSubtraçao.Checked = false;

            txtV1.Focus();
        }
        public void limparCampos()
        {
            txtV1.Text = "";
            txtV2.Clear();
            lblToTal.Text = "";

            rdbAdiçao.Checked = false;
            rdbDivisao.Checked = false;
            rdbMultiplicaçao.Checked = false;
            rdbSubtraçao.Checked = false;

            txtV1.Focus();
        }
        private void txtV1_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtV2_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            // declarando variavel para receber o botão pressionado

            DialogResult resp = MessageBox.Show("deseja sair?",
                "Mensagem do sistema",
                MessageBoxButtons.YesNoCancel,
                MessageBoxIcon.Warning,
                MessageBoxDefaultButton.Button3);

            if (resp == DialogResult.Yes )
            {
                Application.Exit();
            }

            if (resp == DialogResult.No)
            {
                Application.Exit();
            }

            if (resp == DialogResult.Cancel)
            {
                Application.Exit();
            }
        }

        private void gpbOperaçoes_Enter(object sender, EventArgs e)
        {

        }

        private void frmCalculadora_Load(object sender, EventArgs e)
        {

        }

        private void rdbAdiçao_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            // executar o metodo/ função limpar campos.
            limparCampos();
        }
    }
}
