package com.zyp.view;

import java.awt.Color;
import java.awt.EventQueue;

import javax.swing.JInternalFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

import java.awt.Font;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.List;
import java.util.Vector;

import javax.swing.GroupLayout;
import javax.swing.GroupLayout.Alignment;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.JScrollPane;
import javax.swing.JTable;

import com.zyp.entity.Movie;
import com.zyp.service.MovieService;
import com.zyp.service.impl.MovieServiceImpl;
import javax.swing.JTextField;
import javax.swing.LayoutStyle.ComponentPlacement;
import javax.swing.JTextArea;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JComboBox;

public class MovieManage extends JInternalFrame {
	private JTable movietable;
    private MovieService movieservice=new MovieServiceImpl();
    private List<Movie> movieList;
    private Font font = new Font("Arial", 0, 20);
    private JTextField mIdText;
    private JTextField movieNameText;
    private JTextField movielangText;
    private JTextField mlocaText;
    private JTextField movieTypeText;
    private JTextField moviepicadreText;
    private JTextField serNameText;
    private JTextArea movieDeText;
    private int row=-1;
    private JTextField timeText;
    private JTextField scoreText;
    private JTextArea txtrDetailtest;
    private JComboBox serTypecomboBox;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MovieManage frame = new MovieManage();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public MovieManage() {
		getContentPane().setFont(new Font("Arial", Font.PLAIN, 20));
		
		JScrollPane scrollPane = new JScrollPane();
		
		JLabel lblNewLabel = new JLabel("NO.");
		lblNewLabel.setFont(new Font("Arial", Font.PLAIN, 20));
		
		mIdText = new JTextField();
		mIdText.setEditable(false);
		mIdText.setFont(new Font("Arial", Font.PLAIN, 20));
		mIdText.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("Name:");
		lblNewLabel_1.setFont(new Font("Arial", Font.PLAIN, 20));
		
		movieNameText = new JTextField();
		movieNameText.setFont(new Font("Arial", Font.PLAIN, 20));
		movieNameText.setColumns(10);
		
		JLabel lblNewLabel_2 = new JLabel("Language");
		lblNewLabel_2.setFont(new Font("Arial", Font.PLAIN, 20));
		
		movielangText = new JTextField();
		movielangText.setFont(new Font("Arial", Font.PLAIN, 20));
		movielangText.setColumns(10);
		
		JLabel lblNewLabel_3 = new JLabel("Region");
		lblNewLabel_3.setFont(new Font("Arial", Font.PLAIN, 20));
		
		mlocaText = new JTextField();
		mlocaText.setFont(new Font("Arial", Font.PLAIN, 20));
		mlocaText.setColumns(10);
		
		JLabel lblNewLabel_4 = new JLabel("Category");
		lblNewLabel_4.setFont(new Font("Arial", Font.PLAIN, 20));
		
		movieTypeText = new JTextField();
		movieTypeText.setFont(new Font("Arial", Font.PLAIN, 20));
		movieTypeText.setColumns(10);
		
		JLabel lblNewLabel_5 = new JLabel("Poster");
		lblNewLabel_5.setFont(new Font("Arial", Font.PLAIN, 20));
		
		moviepicadreText = new JTextField();
		moviepicadreText.setFont(new Font("Arial", Font.PLAIN, 20));
		moviepicadreText.setColumns(10);
		
		 txtrDetailtest = new JTextArea();
		txtrDetailtest.setText("detailTest");
		txtrDetailtest.setFont(new Font("Arial", Font.PLAIN, 18));
		
		JButton btnNewButton = new JButton("Edit");
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				updatemovieActionPerformed(e);
			}
		});
		btnNewButton.setFont(new Font("Arial", Font.PLAIN, 20));
		
		JButton btnNewButton_1 = new JButton("Delete");
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				delActionPerformed(e);
			}
		});
		btnNewButton_1.setFont(new Font("Arial", Font.PLAIN, 20));
		
		JLabel lblNewLabel_6 = new JLabel("Category");
		lblNewLabel_6.setFont(new Font("Arial", Font.PLAIN, 20));
		
		JLabel lblNewLabel_7 = new JLabel("Name");
		lblNewLabel_7.setFont(new Font("Arial", Font.PLAIN, 20));
		
		serNameText = new JTextField();
		serNameText.setFont(new Font("Arial", Font.PLAIN, 20));
		serNameText.setColumns(10);
		
		JButton serbtn = new JButton("Search");
		serbtn.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				searchActionPerformed(e);
			}
		});
		serbtn.setFont(new Font("Arial", Font.PLAIN, 20));
		
		 movieDeText = new JTextArea();
		 movieDeText.setFont(new Font("Arial", Font.PLAIN, 18));
		 movieDeText.setLineWrap(true);
		
		JLabel lblNewLabel_8 = new JLabel("Duration:");
		lblNewLabel_8.setFont(new Font("Arial", Font.PLAIN, 20));
		
		timeText = new JTextField();
		timeText.setFont(new Font("Arial", Font.PLAIN, 20));
		timeText.setColumns(10);
		
		JLabel lblNewLabel_9 = new JLabel("Rating:");
		lblNewLabel_9.setFont(new Font("Arial", Font.PLAIN, 20));
		
		scoreText = new JTextField();
		scoreText.setFont(new Font("Arial", Font.PLAIN, 20));
		scoreText.setColumns(10);
		
		 serTypecomboBox = new JComboBox();
		serTypecomboBox.setFont(new Font("Arial", Font.PLAIN, 20));
		serTypecomboBox.addItem("Sci-Fi");
		serTypecomboBox.addItem("Action");
		serTypecomboBox.addItem("Romance");
		serTypecomboBox.addItem("Drama");
		serTypecomboBox.addItem("Anime");
		GroupLayout groupLayout = new GroupLayout(getContentPane());
		groupLayout.setHorizontalGroup(
			groupLayout.createParallelGroup(Alignment.LEADING)
				.addGroup(groupLayout.createSequentialGroup()
					.addGroup(groupLayout.createParallelGroup(Alignment.LEADING)
						.addGroup(groupLayout.createSequentialGroup()
							.addGap(152)
							.addComponent(lblNewLabel_6)
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(serTypecomboBox, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
							.addGap(176)
							.addComponent(lblNewLabel_7)
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(serNameText, GroupLayout.PREFERRED_SIZE, 243, GroupLayout.PREFERRED_SIZE)
							.addGap(125)
							.addComponent(serbtn))
						.addGroup(groupLayout.createSequentialGroup()
							.addGroup(groupLayout.createParallelGroup(Alignment.LEADING, false)
								.addGroup(groupLayout.createSequentialGroup()
									.addGap(30)
									.addGroup(groupLayout.createParallelGroup(Alignment.LEADING, false)
										.addGroup(groupLayout.createSequentialGroup()
											.addComponent(lblNewLabel, GroupLayout.PREFERRED_SIZE, 50, GroupLayout.PREFERRED_SIZE)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(mIdText, GroupLayout.PREFERRED_SIZE, 62, GroupLayout.PREFERRED_SIZE)
											.addGap(18)
											.addComponent(lblNewLabel_1)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(movieNameText, GroupLayout.PREFERRED_SIZE, 120, GroupLayout.PREFERRED_SIZE)
											.addGap(20)
											.addComponent(lblNewLabel_8)
											.addGroup(groupLayout.createParallelGroup(Alignment.LEADING)
												.addGroup(groupLayout.createSequentialGroup()
													.addGap(95)
													.addComponent(btnNewButton_1))
												.addGroup(groupLayout.createSequentialGroup()
													.addPreferredGap(ComponentPlacement.RELATED)
													.addComponent(timeText, GroupLayout.PREFERRED_SIZE, 80, GroupLayout.PREFERRED_SIZE))))
										.addGroup(groupLayout.createSequentialGroup()
											.addComponent(lblNewLabel_5)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(moviepicadreText))
										.addGroup(groupLayout.createSequentialGroup()
											.addComponent(lblNewLabel_2)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(movielangText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
											.addGap(18)
											.addComponent(lblNewLabel_3)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(mlocaText, GroupLayout.PREFERRED_SIZE, 92, GroupLayout.PREFERRED_SIZE)
											.addGap(18)
											.addComponent(lblNewLabel_4)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(movieTypeText, GroupLayout.PREFERRED_SIZE, 91, GroupLayout.PREFERRED_SIZE)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(lblNewLabel_9)
											.addPreferredGap(ComponentPlacement.RELATED)
											.addComponent(scoreText, GroupLayout.PREFERRED_SIZE, 46, GroupLayout.PREFERRED_SIZE)))
									.addGap(57)
									.addComponent(movieDeText, GroupLayout.PREFERRED_SIZE, 484, GroupLayout.PREFERRED_SIZE))
								.addGroup(groupLayout.createSequentialGroup()
									.addGap(135)
									.addComponent(btnNewButton))
								.addGroup(groupLayout.createSequentialGroup()
									.addContainerGap()
									.addComponent(scrollPane, GroupLayout.PREFERRED_SIZE, 1201, GroupLayout.PREFERRED_SIZE)))
							.addGap(1079)
							.addComponent(txtrDetailtest, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)))
					.addContainerGap())
		);
		groupLayout.setVerticalGroup(
			groupLayout.createParallelGroup(Alignment.LEADING)
				.addGroup(groupLayout.createSequentialGroup()
					.addGap(57)
					.addGroup(groupLayout.createParallelGroup(Alignment.BASELINE)
						.addComponent(lblNewLabel_6)
						.addComponent(lblNewLabel_7)
						.addComponent(serNameText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
						.addComponent(serbtn)
						.addComponent(serTypecomboBox, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
					.addGap(61)
					.addComponent(scrollPane, GroupLayout.PREFERRED_SIZE, 310, GroupLayout.PREFERRED_SIZE)
					.addGroup(groupLayout.createParallelGroup(Alignment.LEADING)
						.addGroup(groupLayout.createSequentialGroup()
							.addPreferredGap(ComponentPlacement.RELATED)
							.addComponent(txtrDetailtest, GroupLayout.PREFERRED_SIZE, 357, GroupLayout.PREFERRED_SIZE))
						.addGroup(groupLayout.createSequentialGroup()
							.addGap(26)
							.addGroup(groupLayout.createParallelGroup(Alignment.BASELINE)
								.addComponent(lblNewLabel)
								.addComponent(mIdText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
								.addComponent(lblNewLabel_1)
								.addComponent(movieNameText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
								.addComponent(timeText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
								.addComponent(lblNewLabel_8))
							.addGap(46)
							.addGroup(groupLayout.createParallelGroup(Alignment.BASELINE)
								.addComponent(lblNewLabel_2)
								.addComponent(movielangText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
								.addComponent(lblNewLabel_3)
								.addComponent(mlocaText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
								.addComponent(lblNewLabel_4)
								.addComponent(movieTypeText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE)
								.addComponent(lblNewLabel_9)
								.addComponent(scoreText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
							.addGap(41)
							.addGroup(groupLayout.createParallelGroup(Alignment.BASELINE)
								.addComponent(lblNewLabel_5)
								.addComponent(moviepicadreText, GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE, GroupLayout.PREFERRED_SIZE))
							.addGap(69)
							.addGroup(groupLayout.createParallelGroup(Alignment.BASELINE)
								.addComponent(btnNewButton)
								.addComponent(btnNewButton_1)))
						.addGroup(groupLayout.createSequentialGroup()
							.addGap(42)
							.addComponent(movieDeText, GroupLayout.PREFERRED_SIZE, 275, GroupLayout.PREFERRED_SIZE)))
					.addGap(39))
		);
		movieList=movieservice.queryAllMovie();
		movietable = new JTable(){
			  public boolean isCellEditable( int row, int column) {
					return false;
				}

			};
			movietable.setModel(new DefaultTableModel(
					new Object[][] {
					},
					new String[] {
						"NO.", "Name", "Language", "Region","Poster","Duration","Category","Rating"
					}
				) {
					boolean[] columnEditables = new boolean[] {
						false, false, false, false,false,false,false,false
					};
					public boolean isCellEditable(int row, int column) {
						return columnEditables[column];
					}
				});
			fillTable( movieList);
			
			DefaultTableCellRenderer r = new DefaultTableCellRenderer();
			r.setHorizontalAlignment(JLabel.CENTER);
			movietable.setDefaultRenderer(Object.class, r);
			movietable.setRowHeight(70);
			movietable.setFont(font);
			movietable.getTableHeader().setFont(new Font("Arial", 1, 20));
			movietable.getTableHeader().setBackground(Color.orange);
			movietable.getTableHeader().setReorderingAllowed(false); // ??????????????????
			movietable.getTableHeader().setResizingAllowed(false); // ??????????????????
			movietable.addMouseListener(new MouseAdapter() {
				@Override
				public void mousePressed(MouseEvent me) {
					movietablemousePressed(me);
				}
			});
		scrollPane.setViewportView(movietable);
		getContentPane().setLayout(groupLayout);
		setClosable(true);
		setIconifiable(true);
		setTitle("Manage Movie");
		setBounds(100, 100, 1261, 907);

	}

	protected void searchActionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		String mType=(String) serTypecomboBox.getSelectedItem();
		String mName=serNameText.getText();
		movieList=movieservice.queryMovieByTypeandName(mType, mName);
		fillTable(movieList);
	}

	protected void delActionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(row!=-1) {
			int mId=Integer.parseInt(mIdText.getText());
			movieList.remove(row);
			if(movieservice.delMovie(mId)) {
				JOptionPane.showMessageDialog(null, "Delete Successfully");
				fillTable(movieList);
				
			}else {
				JOptionPane.showMessageDialog(null, "Delete Failed");
				reset();
			}
		}else {
			JOptionPane.showMessageDialog(null, "Please choose a movie");
		}
	}

	protected void updatemovieActionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(row!=-1) {
			if(judge()) {
			try {
				int mId=Integer.parseInt(mIdText.getText());
				int mtime=Integer.parseInt(timeText.getText()) ;
				String mloca=mlocaText.getText();
				String movielang=movielangText.getText();
				String moviepicadre=moviepicadreText.getText();
				String movieDe=movieDeText.getText();
				String movieType=movieTypeText.getText();
				String movieName=movieNameText.getText();
				double mscore=Double.parseDouble(scoreText.getText());
				/*movieList.get(row)=new Movie(movieName,movielang,
				 * movieloa,picaddress,detail,mtime,mType,mscore);*/
				Movie movie=new Movie(mId,movieName,movielang,mloca,moviepicadre,movieDe,mtime,movieType,mscore);
				if(movieservice.updateMovie(movie)) {
					JOptionPane.showMessageDialog(null, "Edit Successful");
				}else {
					JOptionPane.showMessageDialog(null, "Edit Failed");
				}
				movieList=movieservice.queryAllMovie();
				fillTable(movieList);
				reset();
			} catch (NumberFormatException e2) {
				// TODO: handle exception
				JOptionPane.showMessageDialog(null, "Format Error");
			}
			}
			
		}else {
			JOptionPane.showMessageDialog(null, "Please choose a movie");
		}
	}

	protected void movietablemousePressed(MouseEvent me) {
		// TODO Auto-generated method stub
		 row=movietable.getSelectedRow();
		if(row!=-1) {
			mIdText.setText(String.valueOf(movieList.get(row).getmId()));
			mlocaText.setText(movieList.get(row).getMlocality());
			movielangText.setText(movieList.get(row).getMlanguage());
			movieNameText.setText(movieList.get(row).getmName());
			moviepicadreText.setText(movieList.get(row).getmPicaddress());
			movieDeText.setText(movieList.get(row).getmDetail());
			movieTypeText.setText(movieList.get(row).getmType());
			timeText.setText(String.valueOf(movieList.get(row).getmDuration()));
			scoreText.setText(String.valueOf(movieList.get(row).getmGrade()));
			
		}else {
			JOptionPane.showMessageDialog(null, "No movie selected");
		}
	}

	private void fillTable(List<Movie> movieList2) {
		// TODO Auto-generated method stub
		DefaultTableModel dtm=(DefaultTableModel) movietable.getModel();
		dtm.setRowCount(0); // ?????????0???
		int movieRow= movieList2.size();
		for(int i=0;i<movieRow;i++) {
			Vector v=new Vector();
			v.add(movieList2.get(i).getmId());
			v.add(movieList2.get(i).getmName());
			v.add(movieList2.get(i).getMlanguage());
			v.add(movieList2.get(i).getMlocality());
			v.add(movieList2.get(i).getmPicaddress());
			v.add(movieList2.get(i).getmDuration());
			v.add(movieList2.get(i).getmType());
			v.add(movieList2.get(i).getmGrade());
			dtm.addRow(v);
		}
		
	}
	public boolean judge() {
		if("".equals(movieNameText.getText())) {
			JOptionPane.showMessageDialog(null, "Name cannot be empty");
			return false;
		}
		if("".equals(movielangText.getText())) {
			JOptionPane.showMessageDialog(null, "Language cannot be empty");
			return false;
		}
		if("".equals(mlocaText.getText())) {
			JOptionPane.showMessageDialog(null, "Address cannot be empty");
			return false;
		}
		if("".equals(moviepicadreText.getText())) {
			JOptionPane.showMessageDialog(null, "Poster cannot be empty");
			return false;
		}
		if("".equals(timeText.getText())) {
			JOptionPane.showMessageDialog(null, "Duration cannot be empty");
			return false;
		}
		if("".equals(scoreText.getText())) {
			JOptionPane.showMessageDialog(null, "Rating cannot be empty");
			return false;
		}
		if("".equals(txtrDetailtest.getText())) {
			JOptionPane.showMessageDialog(null, "Description cannot be empty");
			return false;
		}
		return true;
	}
	public void reset() {
		movieNameText.setText("");
		movielangText.setText("");
		mlocaText.setText("");
		moviepicadreText.setText("");
		timeText.setText("");
		scoreText.setText("");
		movieDeText.setText("");
	}
}
