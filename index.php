
<?php include 'header.php';?>
   <div class="wraper"> 
     <div class="slide">
         <div class="drop-slide">
             <div class="myslide">  
                <a href="" class="picture"><img src="<?php echo base_url(); ?>images/foody-kens-restaurant.jpg"/></a>
                
                <a href="" class="picture"><img src="<?php echo base_url(); ?>images/foody-kens-restaurant.jpg"/></a>

                <div class="recomment">
                  <h1>Kens Grill Restaurant</h1>
                  <p>Buffet Lẫu & Nướng</p>
                </div>  
             </div>    
            <!--  <div class="myslide">
                <a href="" class="picture"><img src="images/foody-ice.jpg"/></a>
                <div class="recomment">
                  <h1>3CE Food-Các món ăn vặt</h1><br />
                  <p>Lưu lại triển cùng cá cứng nào</p>
                </div>
             </div>  
             
                <button id ="next" > &raquo;</button>
                <button id ="prev" > &laquo;</button> -->
         </div>

     </div>
     
     <div class="main">
         <div class="discover">
              <div class="section">
                  <ul> 
                     <li><img src="<?php echo base_url(); ?>images/F.png" width="25" height="25"><h1 style="font-size:1.5em ">Khám phá</h1></li>
                     <li><a href="">Ở đâu<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">Ăn gì<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">Sưu tập<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">TV<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">Bình luận<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">Blogs<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">Đặt bàn<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                     <li><a href="">Giao hàng<span style="float:right;font-size:20px;line-height:11px;color:#000">&raquo;</span></a></li>
                  </ul>
              </div>
              <div class="artical">
                  <div class="menu-artical" style="background-color: #d82026; padding-bottom: 10px;">
                    <div class="menu-left">
                        <!-- <a href="" class="action">Mới nhất</a>
                        <a href="">Gần tôi</a>
                        <a href="">Đã lưu</a> -->
                        <img src="<?php echo base_url(); ?>images/foody-vn.png" style="background-color: white;margin-bottom: -30px; margin-left: -160px; padding: 2px; ">
                    </div>
                    <div class="menu-right">
                      <select>-Danh mục-
                        <option>-Danh mục-</option>
                        <?php
                          $sql = "SELECT * FROM categories";
                          $results = mysqli_query($conn, $sql);
                          if ($results->num_rows > 0) {
                              // output data of each row
                              while($row = $results->fetch_assoc()) { 
                                  echo '<option>'.$row['name'].'</option>';
                              }
                            }
                          else{
                              echo "0 results";
                            }

                        ?>
                      </select>
                      <select>-Quận/Huyện-
                        <option>-Quận/Huyện-</option>
                        <option>Tp.Huế</option>
                        <option>Tx.Hương Thủy</option>
                        <option>A Lưới</option>
                        <option>Tx.Hương Trà</option>
                        <option>Nam Đông</option>
                        <option>Phong Điền</option>
                        <option>Phú Lộc</option>
                        <option>Phú Vang</option>
                        <option>Quảng Điền</option>
                      </select>
                    </div>
                  </div>
                  <div class="content">
                    <div style="width: 100%;float: left;">
                      <ul>
                          <?php 
                              $sql = "SELECT * FROM shops ";
                              $results = mysqli_query($conn, $sql);
                              if ($results->num_rows > 0) {
                                  // output data of each row
                                  while($row = $results->fetch_assoc()) { 
                          ?>
                          <li>
                            <a href="<?php echo base_url(); ?>detail.php?detail_id=<?php echo $row['id'] ?>">
                              <?php if($row['thumbnail']) { ?>
                                  <img src="admin/<?php echo $row['thumbnail']?>" alt="foody-albummax_.jpg" style="width:300px;height: 180px; margin: 10px;">
                                  <?php } else { ?>
                                    <img src="images/update.png" style="width:300px;height: 180px; margin: 10px;">
                              <?php } ?>
                              <div class="content-img">
                                  <div class="name-food"><?php echo $row['name'] ?></div>
                                  <div class="address-store"><?php echo $row['address'] ?></div>
                                  <div class="comment"><?php echo $row['time_open'] ?></div>
                              </div>
                            </a>
                          </li>
                          <?php
                                }
                              }
                              else{
                                  echo "0 results";
                                }
                           ?>
     
                      </ul>
                    </div>
                     
                  </div>
              </div>
              
     
        </div>
      </div>   
      <?php include 'footer.html' ?>
</body>
</html>