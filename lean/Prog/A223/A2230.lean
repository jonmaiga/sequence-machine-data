import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A223000: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223000, there is no canonical definition to state claims against.
-/

/-! ## A223000.P13937679147832721680

`A002260(xor(A020889(n+1), A025192(n)))`
-/

namespace A223000.P13937679147832721680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.xor (A020889 (n + 1)) (A025192 n)).toNat

end

end A223000.P13937679147832721680

/-!
# A223001: Number of 2Xn 0..2 arrays with no more than floor(2Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223001, there is no canonical definition to state claims against.
-/

/-! ## A223001.P2984252364369529493

`A223000(∑[n+1]+2)`
-/

namespace A223001.P2984252364369529493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223001.P2984252364369529493

/-! ## A223001.P3134809315996208766

`record[root(A223000(n+3), A114189(n))]`
-/

namespace A223001.P3134809315996208766
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223000 (n + 3) : ℝ) ^ (1 / (A114189 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223001.P3134809315996208766

/-! ## A223001.P8770891581335315155

`lcm(A033999(n), A223000(A133263(n+1)))`
-/

namespace A223001.P8770891581335315155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223000 (A133263 (n + 1)).toNat)

end

end A223001.P8770891581335315155

/-!
# A223002: Number of 3Xn 0..2 arrays with no more than floor(3Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223002, there is no canonical definition to state claims against.
-/

/-! ## A223002.P15471309725067317400

`A223000(∑[n+2]+4)`
-/

namespace A223002.P15471309725067317400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223002.P15471309725067317400

/-! ## A223002.P474288960629912551

`lcm((-1)^n, A223000(A167614(n+1)))`
-/

namespace A223002.P474288960629912551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223000 (A167614 (n + 1)).toNat)

end

end A223002.P474288960629912551

/-! ## A223002.P11619472754531877646

`A223000(A167614(n+1))+A025442(n)`
-/

namespace A223002.P11619472754531877646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A167614 (n + 1)).toNat + A025442 n

end

end A223002.P11619472754531877646

/-! ## A223002.P14738668075252623256

`A223000(A167614(n+1))+A025444(n)`
-/

namespace A223002.P14738668075252623256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A167614 (n + 1)).toNat + A025444 n

end

end A223002.P14738668075252623256

/-! ## A223002.P1174766008271958691

`A223000(A167614(n+1))+A031346(n)`
-/

namespace A223002.P1174766008271958691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A167614 (n + 1)).toNat + A031346 n

end

end A223002.P1174766008271958691

/-!
# A223003: Number of 4Xn 0..2 arrays with no more than floor(4Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223003, there is no canonical definition to state claims against.
-/

/-! ## A223003.P10485387343492095063

`A223000(A145018(n+4))`
-/

namespace A223003.P10485387343492095063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A145018 (n + 4)).toNat

end

end A223003.P10485387343492095063

/-! ## A223003.P5415947161723510134

`A223000(A141214(n)+7)`
-/

namespace A223003.P5415947161723510134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A141214 n + 7).toNat

end

end A223003.P5415947161723510134

/-! ## A223003.P2121253930340391309

`A223000(A052905(n)+9)`
-/

namespace A223003.P2121253930340391309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A052905 n + 9).toNat

end

end A223003.P2121253930340391309

/-! ## A223003.P3594743389181687511

`A223000(A055999(n)+10)`
-/

namespace A223003.P3594743389181687511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A055999 n + 10).toNat

end

end A223003.P3594743389181687511

/-! ## A223003.P14500855746328318834

`A223000(eq[5, A066657(n)])`
-/

namespace A223003.P14500855746328318834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223003.P14500855746328318834

/-!
# A223004: Number of 5Xn 0..2 arrays with no more than floor(5Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223004, there is no canonical definition to state claims against.
-/

/-! ## A223004.P16605552901932213527

`A223000(A167499(n+3))`
-/

namespace A223004.P16605552901932213527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A167499 (n + 3)).toNat

end

end A223004.P16605552901932213527

/-! ## A223004.P8672337996280174931

`A223000(A155212(n)+13)`
-/

namespace A223004.P8672337996280174931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A155212 n + 13).toNat

end

end A223004.P8672337996280174931

/-! ## A223004.P9927802083304182800

`A223000(A056000(n)+15)`
-/

namespace A223004.P9927802083304182800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (A056000 n + 15).toNat

end

end A223004.P9927802083304182800

/-! ## A223004.P16173606703143543902

`A223000(eq[7, A066657(n)])`
-/

namespace A223004.P16173606703143543902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223004.P16173606703143543902

/-!
# A223005: Number of n X n 0..1 arrays with no more than floor(n X n/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223005, there is no canonical definition to state claims against.
-/

/-! ## A223005.P4859323657797012311

`A223012(∑[4*n]+1)`
-/

namespace A223005.P4859323657797012311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223005.P4859323657797012311

/-! ## A223005.P11630041899199850223

`record[gcd(A114327(n), A223012(n+1))]`
-/

namespace A223005.P11630041899199850223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223005.P11630041899199850223

/-! ## A223005.P6584021361366900542

`A223012(A001844(n))+A185236(n)`
-/

namespace A223005.P6584021361366900542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A001844 n).toNat + A185236 n

end

end A223005.P6584021361366900542

/-! ## A223005.P13522944102572744715

`gcd(A000038(n), A223012(A001844(n)))`
-/

namespace A223005.P13522944102572744715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A223012 (A001844 n).toNat)

end

end A223005.P13522944102572744715

/-! ## A223005.P12690791507667758859

`or(A000007(n), A223012(A001844(n)))`
-/

namespace A223005.P12690791507667758859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223012 (A001844 n).toNat)

end

end A223005.P12690791507667758859

/-!
# A223006: Number of nX2 0..1 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223006, there is no canonical definition to state claims against.
-/

/-! ## A223006.P7025676775386428154

`A222353(2*(n+1))`
-/

namespace A223006.P7025676775386428154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222353 (2 * (n + 1))

end

end A223006.P7025676775386428154

/-! ## A223006.P3396846748003822875

`record[A222353((n+1)%4+n+1)]`
-/

namespace A223006.P3396846748003822875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222353 ((n + 1) % 4 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223006.P3396846748003822875

/-! ## A223006.P4096135167877754256

`record[A222353(A124625(n+2))]`
-/

namespace A223006.P4096135167877754256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222353 (A124625 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223006.P4096135167877754256

/-! ## A223006.P14627404765693418051

`record[A222353(A000265(n+1)+1)]`
-/

namespace A223006.P14627404765693418051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222353 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223006.P14627404765693418051

/-!
# A223007: Number of nX3 0..1 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223007, there is no canonical definition to state claims against.
-/

/-! ## A223007.P17107678609568486712

`A223012(∑[n+3]+1)`
-/

namespace A223007.P17107678609568486712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223007.P17107678609568486712

/-! ## A223007.P1557688966445886212

`record[A223012(A198464(n+1))]`
-/

namespace A223007.P1557688966445886212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223007.P1557688966445886212

/-! ## A223007.P14597520364215558646

`A223012(A141214(n)+1)%A222702(n+1)`
-/

namespace A223007.P14597520364215558646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223012 (A141214 n + 1).toNat) (A222702 (n + 1))

end

end A223007.P14597520364215558646

/-! ## A223007.P6802564100218118928

`A223012(A000124(n+3)-3)+1-A036225(2*n)`
-/

namespace A223007.P6802564100218118928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A000124 (n + 3) - 3).toNat + 1 - A036225 (2 * n)

end

end A223007.P6802564100218118928

/-! ## A223007.P13987424316354093018

`A287160(A287161(2*n+1))+A223012(A000124(n+3)-3)`
-/

namespace A223007.P13987424316354093018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (A287161 (2 * n + 1)).toNat + A223012 (A000124 (n + 3) - 3).toNat

end

end A223007.P13987424316354093018

/-!
# A223008: Number of nX4 0..1 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223008, there is no canonical definition to state claims against.
-/

/-! ## A223008.P17657192885705728822

`A223012(A141214(n+1))`
-/

namespace A223008.P17657192885705728822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A141214 (n + 1)).toNat

end

end A223008.P17657192885705728822

/-! ## A223008.P122683265105539610

`A223012(A055998(n+2))`
-/

namespace A223008.P122683265105539610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A055998 (n + 2)).toNat

end

end A223008.P122683265105539610

/-! ## A223008.P14348418196601739326

`A223012(A155212(n)+5)`
-/

namespace A223008.P14348418196601739326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A155212 n + 5).toNat

end

end A223008.P14348418196601739326

/-! ## A223008.P2831241468122339185

`A223012(A056000(n)+7)`
-/

namespace A223008.P2831241468122339185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A056000 n + 7).toNat

end

end A223008.P2831241468122339185

/-! ## A223008.P1170617823467511373

`A223012(eq[3, A193592(n)])`
-/

namespace A223008.P1170617823467511373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223008.P1170617823467511373

/-!
# A223009: Number of nX5 0..1 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223009, there is no canonical definition to state claims against.
-/

/-! ## A223009.P7816631898860435833

`A223012(Δ[A264443(n)])`
-/

namespace A223009.P7816631898860435833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (f1 (n + 1) - f1 n).toNat

end

end A223009.P7816631898860435833

/-! ## A223009.P9268129828405722302

`A223012(A046691(n+3))`
-/

namespace A223009.P9268129828405722302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A046691 (n + 3)).toNat

end

end A223009.P9268129828405722302

/-! ## A223009.P3524750412153582680

`A223012(eq[4, A193592(n)])`
-/

namespace A223009.P3524750412153582680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223009.P3524750412153582680

/-! ## A223009.P11049075533782162282

`A223012(eq[5, A239144(n)])`
-/

namespace A223009.P11049075533782162282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223009.P11049075533782162282

/-! ## A223009.P17838506817286843115

`A223012(Δ[A023545(n+1)])`
-/

namespace A223009.P17838506817286843115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (f1 (n + 1) - f1 n).toNat

end

end A223009.P17838506817286843115

/-!
# A223010: Number of nX6 0..1 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223010, there is no canonical definition to state claims against.
-/

/-! ## A223010.P3360583642795563461

`A223012(A056119(n)+16)`
-/

namespace A223010.P3360583642795563461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A056119 n + 16).toNat

end

end A223010.P3360583642795563461

/-! ## A223010.P5765415082718595959

`A223012(eq[3, A219347(n)])`
-/

namespace A223010.P5765415082718595959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223010.P5765415082718595959

/-! ## A223010.P15008739046160549865

`A223012(eq[5, A193592(n)])`
-/

namespace A223010.P15008739046160549865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223010.P15008739046160549865

/-! ## A223010.P8297788154326735832

`A223012(eq[8, A258709(n)])`
-/

namespace A223010.P8297788154326735832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223010.P8297788154326735832

/-! ## A223010.P15628246321964299883

`A223012(Δ[Δ[A006504(n+1)]])`
-/

namespace A223010.P15628246321964299883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (f1 (n + 1) - f1 n).toNat

end

end A223010.P15628246321964299883

/-!
# A223011: Number of nX7 0..1 arrays with no more than floor(nX7/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223011, there is no canonical definition to state claims against.
-/

/-! ## A223011.P5240273859125962069

`A223012(A055999(n+4))`
-/

namespace A223011.P5240273859125962069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A055999 (n + 4)).toNat

end

end A223011.P5240273859125962069

/-! ## A223011.P1578435521076580597

`A223012(eq[4, A219347(n)])`
-/

namespace A223011.P1578435521076580597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223011.P1578435521076580597

/-! ## A223011.P7372999141649438574

`A223012(eq[6, A193592(n)])`
-/

namespace A223011.P7372999141649438574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223011.P7372999141649438574

/-! ## A223011.P8300825631847897247

`A223012(eq[7, A200370(n+1)])`
-/

namespace A223011.P8300825631847897247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223011.P8300825631847897247

/-! ## A223011.P13549174354822258070

`A223012(eq[10, A185782(n+1)])`
-/

namespace A223011.P13549174354822258070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223011.P13549174354822258070

/-!
# A223013: Number of 2Xn 0..1 arrays with no more than floor(2Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223013, there is no canonical definition to state claims against.
-/

/-! ## A223013.P12060519570757400104

`A223012(∑[n+1]+2)`
-/

namespace A223013.P12060519570757400104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223013.P12060519570757400104

/-! ## A223013.P966701319153352890

`or(char[2], A223012(A133263(n+1)))`
-/

namespace A223013.P966701319153352890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223012 (A133263 (n + 1)).toNat)

end

end A223013.P966701319153352890

/-! ## A223013.P9923455096297176614

`lcm(A000038(n)!, A223012(A133263(n+1)))`
-/

namespace A223013.P9923455096297176614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (A223012 (A133263 (n + 1)).toNat)

end

end A223013.P9923455096297176614

/-! ## A223013.P11713207429798384091

`A007318(A000217(n))*A223012(A133263(n+1))`
-/

namespace A223013.P11713207429798384091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A223012 (A133263 (n + 1)).toNat

end

end A223013.P11713207429798384091

/-! ## A223013.P275850526132104072

`A223012(A133263(n+1))%A000108(A002808(n+1))`
-/

namespace A223013.P275850526132104072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223012 (A133263 (n + 1)).toNat) (A000108 (A002808 (n + 1)).toNat)

end

end A223013.P275850526132104072

/-!
# A223014: Number of 3Xn 0..1 arrays with no more than floor(3Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223014, there is no canonical definition to state claims against.
-/

/-! ## A223014.P7049502379087345442

`A223012(∑[n+2]+4)`
-/

namespace A223014.P7049502379087345442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223014.P7049502379087345442

/-! ## A223014.P4357468131269790219

`A223012(A167614(n+1))%(5*7^n+1)`
-/

namespace A223014.P4357468131269790219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223012 (A167614 (n + 1)).toNat) (5 * 7 ^ n + 1 : ℤ)

end

end A223014.P4357468131269790219

/-! ## A223014.P17953309338628404905

`lcm(A033999(n), A223012(A167614(n+1)))`
-/

namespace A223014.P17953309338628404905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223012 (A167614 (n + 1)).toNat)

end

end A223014.P17953309338628404905

/-! ## A223014.P17371895004509177542

`A020985(n)²*A223012(A167614(n+1))`
-/

namespace A223014.P17371895004509177542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A223012 (A167614 (n + 1)).toNat

end

end A223014.P17371895004509177542

/-! ## A223014.P2439248728481914996

`A223012(A167614(n+1))+A034461(n+1)`
-/

namespace A223014.P2439248728481914996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A167614 (n + 1)).toNat + A034461 (n + 1)

end

end A223014.P2439248728481914996

/-!
# A223015: Number of 4Xn 0..1 arrays with no more than floor(4Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223015, there is no canonical definition to state claims against.
-/

/-! ## A223015.P12650518244895318176

`A223012(A141214(n)+7)`
-/

namespace A223015.P12650518244895318176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A141214 n + 7).toNat

end

end A223015.P12650518244895318176

/-! ## A223015.P11728288315594550767

`A223012(A055999(n)+10)`
-/

namespace A223015.P11728288315594550767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A055999 n + 10).toNat

end

end A223015.P11728288315594550767

/-! ## A223015.P2036196280397530784

`A223012(A167614(n+2)+1)`
-/

namespace A223015.P2036196280397530784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A167614 (n + 2) + 1).toNat

end

end A223015.P2036196280397530784

/-! ## A223015.P2588816274741190727

`A223012(A000124(n+3)+3)`
-/

namespace A223015.P2588816274741190727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A000124 (n + 3) + 3).toNat

end

end A223015.P2588816274741190727

/-! ## A223015.P15649920646198372865

`A223012(A025747(n+2)+4)`
-/

namespace A223015.P15649920646198372865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A025747 (n + 2) + 4).toNat

end

end A223015.P15649920646198372865

/-!
# A223016: Number of 5Xn 0..1 arrays with no more than floor(5Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223016, there is no canonical definition to state claims against.
-/

/-! ## A223016.P18297509453881591233

`A223012(A167499(n+3))`
-/

namespace A223016.P18297509453881591233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A167499 (n + 3)).toNat

end

end A223016.P18297509453881591233

/-! ## A223016.P9902224400680744669

`A223012(A155212(n)+13)`
-/

namespace A223016.P9902224400680744669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A155212 n + 13).toNat

end

end A223016.P9902224400680744669

/-! ## A223016.P2103589810312717496

`A223012(A056000(n)+15)`
-/

namespace A223016.P2103589810312717496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A056000 n + 15).toNat

end

end A223016.P2103589810312717496

/-! ## A223016.P6838500933849401110

`A223012(eq[7, A066657(n)])`
-/

namespace A223016.P6838500933849401110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223016.P6838500933849401110

/-! ## A223016.P17606180505628163185

`A223012(A051936(n+4)+14)`
-/

namespace A223016.P17606180505628163185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A051936 (n + 4) + 14).toNat

end

end A223016.P17606180505628163185

/-!
# A223017: Number of 6Xn 0..1 arrays with no more than floor(6Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223017, there is no canonical definition to state claims against.
-/

/-! ## A223017.P16429565794126532735

`A223012(∑[n+5]+16)`
-/

namespace A223017.P16429565794126532735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223017.P16429565794126532735

/-!
# A223018: Number of 7Xn 0..1 arrays with no more than floor(7Xn/2) elements unequal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..1 order.

The programs for A223018, there is no canonical definition to state claims against.
-/

/-! ## A223018.P15304143534789329806

`A223012(A167487(n+5))`
-/

namespace A223018.P15304143534789329806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A167487 (n + 5)).toNat

end

end A223018.P15304143534789329806

/-! ## A223018.P3656840663449412866

`A223012(A056119(n)+28)`
-/

namespace A223018.P3656840663449412866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A056119 n + 28).toNat

end

end A223018.P3656840663449412866

/-! ## A223018.P12957735405770855266

`A223012(eq[11, A066657(n)])`
-/

namespace A223018.P12957735405770855266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223018.P12957735405770855266

/-! ## A223018.P12952276877646669617

`A223012(A000124(n+6)+6)`
-/

namespace A223018.P12952276877646669617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A000124 (n + 6) + 6).toNat

end

end A223018.P12952276877646669617

/-! ## A223018.P6584628923991277899

`A223012(eq[8, A131818(n+1)])`
-/

namespace A223018.P6584628923991277899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223018.P6584628923991277899

/-!
# A223019: Number of nX3 0..2 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223019, there is no canonical definition to state claims against.
-/

/-! ## A223019.P1564214702238376309

`A223022(∑[n+2]+4)`
-/

namespace A223019.P1564214702238376309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223019.P1564214702238376309

/-! ## A223019.P13091336091935199455

`or(1, A223022(A167614(n+1)))`
-/

namespace A223019.P13091336091935199455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223022 (A167614 (n + 1)).toNat)

end

end A223019.P13091336091935199455

/-! ## A223019.P5496514569877813189

`A223022(A167614(n+1))+A025466(n)`
-/

namespace A223019.P5496514569877813189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A167614 (n + 1)).toNat + A025466 n

end

end A223019.P5496514569877813189

/-! ## A223019.P2196342618582729914

`A223022(A167614(n+1))+A184955(n)`
-/

namespace A223019.P2196342618582729914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A167614 (n + 1)).toNat + A184955 n

end

end A223019.P2196342618582729914

/-! ## A223019.P18036701466698315041

`A223022(A167614(n+1))+A185238(n)`
-/

namespace A223019.P18036701466698315041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A167614 (n + 1)).toNat + A185238 n

end

end A223019.P18036701466698315041

/-!
# A223020: Number of n X 4 0..2 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223020, there is no canonical definition to state claims against.
-/

/-! ## A223020.P5777289439439433929

`A223022(A374004(n+1))`
-/

namespace A223020.P5777289439439433929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A374004 (n + 1)).toNat

end

end A223020.P5777289439439433929

/-! ## A223020.P12617057785556908965

`A223022(A141214(n)+7)`
-/

namespace A223020.P12617057785556908965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A141214 n + 7).toNat

end

end A223020.P12617057785556908965

/-! ## A223020.P254305871447492174

`A223022(A052905(n)+9)`
-/

namespace A223020.P254305871447492174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A052905 n + 9).toNat

end

end A223020.P254305871447492174

/-! ## A223020.P14553051677151882032

`A223022(A055999(n)+10)`
-/

namespace A223020.P14553051677151882032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A055999 n + 10).toNat

end

end A223020.P14553051677151882032

/-! ## A223020.P6405753507670378558

`A223022(eq[5, A066657(n)])`
-/

namespace A223020.P6405753507670378558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223020.P6405753507670378558

/-!
# A223021: Number of nX5 0..2 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223021, there is no canonical definition to state claims against.
-/

/-! ## A223021.P2901763731887576453

`A223022(A374005(n+1))`
-/

namespace A223021.P2901763731887576453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A374005 (n + 1)).toNat

end

end A223021.P2901763731887576453

/-! ## A223021.P9227917652859440121

`A223022(A167499(n+3))`
-/

namespace A223021.P9227917652859440121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A167499 (n + 3)).toNat

end

end A223021.P9227917652859440121

/-! ## A223021.P14320277721082900995

`A223022(A155212(n)+13)`
-/

namespace A223021.P14320277721082900995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A155212 n + 13).toNat

end

end A223021.P14320277721082900995

/-! ## A223021.P1281524594177733891

`A223022(A056000(n)+15)`
-/

namespace A223021.P1281524594177733891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (A056000 n + 15).toNat

end

end A223021.P1281524594177733891

/-! ## A223021.P5783410885716099359

`A223022(eq[7, A066657(n)])`
-/

namespace A223021.P5783410885716099359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223021.P5783410885716099359

/-!
# A223023: Poly-Cauchy numbers c_n^(-5).

The programs for A223023, there is no canonical definition to state claims against.
-/

/-! ## A223023.P13306197085156992248

`A383049(A299547(n+4)-3)`
-/

namespace A223023.P13306197085156992248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A299547 (n + 4) - 3).toNat

end

end A223023.P13306197085156992248

/-! ## A223023.P3599016477162469441

`A383049(A028310(2*(n+2))+A000124(n+4))`
-/

namespace A223023.P3599016477162469441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383049 (A028310 (2 * (n + 2)) + A000124 (n + 4)).toNat

end

end A223023.P3599016477162469441

/-!
# A223024: Numbers k such that 3^k is odious (A000069).

The programs for A223024, there is no canonical definition to state claims against.
-/

/-! ## A223024.P7260296458638758010

`comp[A371970(n+1)]`
-/

namespace A223024.P7260296458638758010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A223024.P7260296458638758010

/-! ## A223024.P7113858706339313638

`eq[1, A011754(n)%2]`
-/

namespace A223024.P7113858706339313638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011754 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223024.P7113858706339313638

/-! ## A223024.P17211954033508406905

`record[(n+1)*A011754(n+1)%2]`
-/

namespace A223024.P17211954033508406905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A011754 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223024.P17211954033508406905

/-! ## A223024.P2159591683465407496

`eq[0, A007814(A011754(n))]`
-/

namespace A223024.P2159591683465407496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223024.P2159591683465407496

/-! ## A223024.P5422576241733888413

`eq[2, A020639(A011754(n)+1)]`
-/

namespace A223024.P5422576241733888413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A011754 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223024.P5422576241733888413

/-! ## A223024.P8078314446611584169

`eq[3, A020639(3*A011754(n))]`
-/

namespace A223024.P8078314446611584169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A011754 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223024.P8078314446611584169

/-! ## A223024.P4802839815022251860

`lt[A027656(A011754(n)), A351469(n+2)]`
-/

namespace A223024.P4802839815022251860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A011754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351469 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223024.P4802839815022251860

/-! ## A223024.P6056339011381518448

`val(A237545(n+1), 3)`
-/

namespace A223024.P6056339011381518448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A237545 (n + 1)).toNat 3

end

end A223024.P6056339011381518448

/-! ## A223024.P134405801776256486

`lt[A027656(A011754(n)²), 1]`
-/

namespace A223024.P134405801776256486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A011754 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223024.P134405801776256486

/-!
# A223025: Gives the column number which contains n in the dual Wythoff array (beginning the column count at 1).

The programs for A223025, there is no canonical definition to state claims against.
-/

/-! ## A223025.P17183695991426283847

`Δ[a(ceil((n-1)/ϕ))+n]` with `a(0)=0`
-/

namespace A223025.P17183695991426283847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌈((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌉.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A223025.P17183695991426283847

/-! ## A223025.P11030521024977771577

`val(A060142(n)+1, 2)+1`
-/

namespace A223025.P11030521024977771577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060142 n + 1).toNat 2 + 1

end

end A223025.P11030521024977771577

/-! ## A223025.P10852556664424196398

`val(A219608(n+1)+1, 2)`
-/

namespace A223025.P10852556664424196398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A219608 (n + 1) + 1).toNat 2

end

end A223025.P10852556664424196398

/-! ## A223025.P10854325197418499134

`val(A280873(n)+1, 2)+1`
-/

namespace A223025.P10854325197418499134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A280873 n + 1).toNat 2 + 1

end

end A223025.P10854325197418499134

/-! ## A223025.P17818713657775335088

`val(A358654(n)+1, 2)+1`
-/

namespace A223025.P17818713657775335088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358654 n + 1).toNat 2 + 1

end

end A223025.P17818713657775335088

/-! ## A223025.P6667748172508884386

`val(record[A292271(n+1)], 2)+1`
-/

namespace A223025.P6667748172508884386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A223025.P6667748172508884386

/-! ## A223025.P7331568583922030644

`val(record[or(1, A154435(n))]+1, 2)`
-/

namespace A223025.P7331568583922030644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154435 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 2

end

end A223025.P7331568583922030644

/-! ## A223025.P13627656194911529257

`A001511(A060142(n)+1)`
-/

namespace A223025.P13627656194911529257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A060142 n + 1).toNat

end

end A223025.P13627656194911529257

/-! ## A223025.P9704642214956442177

`A072078(A060142(n)+1)`
-/

namespace A223025.P9704642214956442177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A060142 n + 1).toNat

end

end A223025.P9704642214956442177

/-!
# A223027: G.f.: sqrt( 1 + Sum_{n>=1} 4*x^(n^2) ).

The programs for A223027, there is no canonical definition to state claims against.
-/

/-! ## A223027.P294168663706587840

`A227295(n)/A046523(A000244(n))`
-/

namespace A223027.P294168663706587840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227295 n : ℚ) / (A046523 (A000244 n).toNat : ℚ)

end

end A223027.P294168663706587840

/-!
# A223028: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223028, there is no canonical definition to state claims against.
-/

/-! ## A223028.P8430601298219286173

`A223468(n+1)-A077957(n)`
-/

namespace A223028.P8430601298219286173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223468 (n + 1) - A077957 n

end

end A223028.P8430601298219286173

/-! ## A223028.P17177738720066479795

`A223468(n+1)-Δ[A060546(n)]`
-/

namespace A223028.P17177738720066479795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223468 (n + 1) - (f1 (n + 1) - f1 n)

end

end A223028.P17177738720066479795

/-! ## A223028.P16975780832983213120

`A223468(n+1)+1-A052552(n)`
-/

namespace A223028.P16975780832983213120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223468 (n + 1) + (1 - A052552 n)

end

end A223028.P16975780832983213120

/-! ## A223028.P13395912652114671166

`and(A223468(n+1)-A033999(n), A223468(n+1))`
-/

namespace A223028.P13395912652114671166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A223468 (n + 1) - A033999 n) (A223468 (n + 1))

end

end A223028.P13395912652114671166

/-! ## A223028.P16111027669500162331

`and(A223468(n+1)-A235141(n+1), A223468(n+1))`
-/

namespace A223028.P16111027669500162331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A223468 (n + 1) - A235141 (n + 1)) (A223468 (n + 1))

end

end A223028.P16111027669500162331

/-!
# A223029: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223029, there is no canonical definition to state claims against.
-/

/-! ## A223029.P7040864809320394276

`A223033(∑[n+2]+4)`
-/

namespace A223029.P7040864809320394276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223029.P7040864809320394276

/-! ## A223029.P8371449962238042887

`and(-1, A223033(A167614(n+1)))`
-/

namespace A223029.P8371449962238042887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223033 (A167614 (n + 1)).toNat)

end

end A223029.P8371449962238042887

/-! ## A223029.P13817835777800370346

`record[A010054(n)*A223033(n+3)]`
-/

namespace A223029.P13817835777800370346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223033 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223029.P13817835777800370346

/-! ## A223029.P5927291581004936201

`record[A223033(n+5)*A291137(n+2)]`
-/

namespace A223029.P5927291581004936201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (n + 5) * A291137 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223029.P5927291581004936201

/-! ## A223029.P12230410622791001166

`A223033(A167614(n+1))+A011731(n)`
-/

namespace A223029.P12230410622791001166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A167614 (n + 1)).toNat + A011731 n

end

end A223029.P12230410622791001166

/-!
# A223030: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223030, there is no canonical definition to state claims against.
-/

/-! ## A223030.P14110145227029286779

`A223033(A374004(n+1))`
-/

namespace A223030.P14110145227029286779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A374004 (n + 1)).toNat

end

end A223030.P14110145227029286779

/-! ## A223030.P18155691124597438150

`A223033(A141214(n)+7)`
-/

namespace A223030.P18155691124597438150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A141214 n + 7).toNat

end

end A223030.P18155691124597438150

/-! ## A223030.P8441032690707831872

`A223033(A052905(n)+9)`
-/

namespace A223030.P8441032690707831872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A052905 n + 9).toNat

end

end A223030.P8441032690707831872

/-! ## A223030.P16768979218408422388

`A223033(A055999(n)+10)`
-/

namespace A223030.P16768979218408422388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A055999 n + 10).toNat

end

end A223030.P16768979218408422388

/-! ## A223030.P6476788418346974868

`A223033(eq[5, A066657(n)])`
-/

namespace A223030.P6476788418346974868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223030.P6476788418346974868

/-!
# A223031: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223031, there is no canonical definition to state claims against.
-/

/-! ## A223031.P14490955795185370133

`A223033(A374005(n+1))`
-/

namespace A223031.P14490955795185370133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A374005 (n + 1)).toNat

end

end A223031.P14490955795185370133

/-! ## A223031.P10742225998184583745

`A223033(A167499(n+3))`
-/

namespace A223031.P10742225998184583745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A167499 (n + 3)).toNat

end

end A223031.P10742225998184583745

/-! ## A223031.P36021379794692194

`A223033(A155212(n)+13)`
-/

namespace A223031.P36021379794692194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A155212 n + 13).toNat

end

end A223031.P36021379794692194

/-! ## A223031.P10492350213332275555

`A223033(A056000(n)+15)`
-/

namespace A223031.P10492350213332275555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A056000 n + 15).toNat

end

end A223031.P10492350213332275555

/-! ## A223031.P11095662594277076893

`A223033(eq[7, A066657(n)])`
-/

namespace A223031.P11095662594277076893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223031.P11095662594277076893

/-!
# A223032: Number of nX6 0..2 arrays with exactly floor(nX6/2) elements equal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A223032, there is no canonical definition to state claims against.
-/

/-! ## A223032.P16565189859634903902

`A223033(∑[n+5]+16)`
-/

namespace A223032.P16565189859634903902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223032.P16565189859634903902

/-! ## A223032.P2669830125048084884

`A223033(A052905(n+3))+A009641(n)`
-/

namespace A223032.P2669830125048084884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223033 (A052905 (n + 3)).toNat + A009641 n

end

end A223032.P2669830125048084884

/-! ## A223032.P6235953082564997101

`A246577(n)+A223033(A052905(n+3))`
-/

namespace A223032.P6235953082564997101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246577 n + A223033 (A052905 (n + 3)).toNat

end

end A223032.P6235953082564997101

/-!
# A223034: Number of 3-vexillary permutations in S_n, that is, permutations whose Stanley symmetric function has at most 3 terms or at most 3 Edelman-Greene tableaux.

The programs for A223034, there is no canonical definition to state claims against.
-/

/-! ## A223034.P6613470957355060807

`A177548(n)-A002265(A058836(n))`
-/

namespace A223034.P6613470957355060807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177548 n - A002265 (A058836 n).toNat

end

end A223034.P6613470957355060807

/-! ## A223034.P14914646077914216454

`A177548(n)-A002265(A341743(2*(2-n)²))`
-/

namespace A223034.P14914646077914216454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177548 n - A002265 (A341743 (2 * (2 - (n : ℤ)) ^ 2).toNat).toNat

end

end A223034.P14914646077914216454

/-! ## A223034.P18019879820340780169

`A214701(char[5]+n!)`
-/

namespace A223034.P18019879820340780169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 ((if ∃ j, f1 j = n then 1 else 0) + Nat.factorial n)

end

end A223034.P18019879820340780169

/-!
# A223035: Prime numbers whose digits squared sum to a square.

The programs for A223035, the canonical program `A223035.P17125103435558196622` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223035 has offset 1).

The definition of A223035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 901 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223035.P17125103435558196622

`p?[A175396(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A223035

/-- `p?[A175396(n+1)]` -/
def P17125103435558196622.Spec : Prop :=
  ∀ n, P17125103435558196622.a n = A223035 (n + 1)

theorem P17125103435558196622.correct : P17125103435558196622.Spec := by
  intro n
  simp only [A223035, Nat.add_sub_cancel]

end A223035

/-! ## A223035.P8776888167204256253

`∩[A156756(n+1), A175396(n+1)]`
-/

namespace A223035.P8776888167204256253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223035.P8776888167204256253

namespace A223035

/-- `∩[A156756(n+1), A175396(n+1)]` -/
def P8776888167204256253.Spec : Prop :=
  ∀ n, (P8776888167204256253.a n : ℤ) = A223035 (n + 1)

end A223035

/-! ## A223035.P7122932439326382241

`p?[A175396(A028310(n))]%A017502(n)`
-/

namespace A223035.P7122932439326382241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017502 n)

end

end A223035.P7122932439326382241

namespace A223035

/-- `p?[A175396(A028310(n))]%A017502(n)` -/
def P7122932439326382241.Spec : Prop :=
  ∀ n, P7122932439326382241.a n = A223035 (n + 1)

end A223035

/-! ## A223035.P18411224922529114006

`p?[record[A175396(A052938(n))]]`
-/

namespace A223035.P18411224922529114006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A223035.P18411224922529114006

namespace A223035

/-- `p?[record[A175396(A052938(n))]]` -/
def P18411224922529114006.Spec : Prop :=
  ∀ n, P18411224922529114006.a n = A223035 (n + 1)

end A223035

/-! ## A223035.P5390217260547687876

`p?[record[A175396(A106466(n))]]`
-/

namespace A223035.P5390217260547687876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A223035.P5390217260547687876

namespace A223035

/-- `p?[record[A175396(A106466(n))]]` -/
def P5390217260547687876.Spec : Prop :=
  ∀ n, P5390217260547687876.a n = A223035 (n + 1)

end A223035

/-! ## A223035.P10654053645632803380

`∩[A000040(n+1), A175396(n+1)]`
-/

namespace A223035.P10654053645632803380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223035.P10654053645632803380

namespace A223035

/-- `∩[A000040(n+1), A175396(n+1)]` -/
def P10654053645632803380.Spec : Prop :=
  ∀ n, (P10654053645632803380.a n : ℤ) = A223035 (n + 1)

end A223035

/-! ## A223035.P17856665927880980803

`record[A020639(A175396(n+3))]`
-/

namespace A223035.P17856665927880980803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175396 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223035.P17856665927880980803

namespace A223035

/-- `record[A020639(A175396(n+3))]` -/
def P17856665927880980803.Spec : Prop :=
  ∀ n, P17856665927880980803.a n = A223035 (n + 1)

end A223035

/-! ## A223035.P3129005958731968147

`filter[A175396(n+2), A010051(#)]`
-/

namespace A223035.P3129005958731968147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175396 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A223035.P3129005958731968147

namespace A223035

/-- `filter[A175396(n+2), A010051(#)]` -/
def P3129005958731968147.Spec : Prop :=
  ∀ n, P3129005958731968147.a n = A223035 (n + 1)

end A223035

/-!
# A223036: Primes p whose smallest positive quadratic nonresidue is a primitive root of p.

The programs for A223036, there is no canonical definition to state claims against.
-/

/-! ## A223036.P1991147440547033472

`A065091(eq[A001918(n+1), A053760(n+1)])`
-/

namespace A223036.P1991147440547033472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A223036.P1991147440547033472

/-! ## A223036.P11751759190047068129

`A000040(eq[A001918(n+1), A053760(n+1)]+1)`
-/

namespace A223036.P11751759190047068129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A223036.P11751759190047068129

/-! ## A223036.P6114404497686178890

`A006093(eq[A001918(n+1), A053760(n+1)]+1)+1`
-/

namespace A223036.P6114404497686178890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A223036.P6114404497686178890

/-! ## A223036.P687471674654770365

`record[A084127(A127288(n+2))]`
-/

namespace A223036.P687471674654770365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084127 (A127288 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223036.P687471674654770365

/-! ## A223036.P8349709650391054442

`A109919(A379965(n+2))`
-/

namespace A223036.P8349709650391054442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (A379965 (n + 2)).toNat

end

end A223036.P8349709650391054442

/-!
# A223038: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223038, there is no canonical definition to state claims against.
-/

/-! ## A223038.P7985806196161167540

`A223041(∑[n+3]+1)`
-/

namespace A223038.P7985806196161167540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223038.P7985806196161167540

/-!
# A223039: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223039, there is no canonical definition to state claims against.
-/

/-! ## A223039.P9344455403062131924

`A223041(∑[n+4]+3)`
-/

namespace A223039.P9344455403062131924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223039.P9344455403062131924

/-!
# A223040: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223040, there is no canonical definition to state claims against.
-/

/-! ## A223040.P6339005841853103254

`A223041(∑[n+5]+6)`
-/

namespace A223040.P6339005841853103254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223040.P6339005841853103254

/-!
# A223042: Number of 2Xn 0..3 arrays with no more than floor(2Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223042, there is no canonical definition to state claims against.
-/

/-! ## A223042.P759030191369105518

`A223041(∑[n+1]+2)`
-/

namespace A223042.P759030191369105518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223042.P759030191369105518

/-! ## A223042.P1065972956361572598

`record[A110314(n)*A223041(n+3)]`
-/

namespace A223042.P1065972956361572598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110314 n * A223041 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223042.P1065972956361572598

/-! ## A223042.P3521514622685896966

`record[root(A223041(n+3), A049020(n))]`
-/

namespace A223042.P3521514622685896966
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223041 (n + 3) : ℝ) ^ (1 / (A049020 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223042.P3521514622685896966

/-! ## A223042.P437908539020951188

`record[A223041(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A223042.P437908539020951188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223042.P437908539020951188

/-! ## A223042.P18080819142397397193

`lcm(A158388(n), A223041(A133263(n+1)))`
-/

namespace A223042.P18080819142397397193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A223041 (A133263 (n + 1)).toNat)

end

end A223042.P18080819142397397193

/-!
# A223043: Number of 3Xn 0..3 arrays with no more than floor(3Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223043, there is no canonical definition to state claims against.
-/

/-! ## A223043.P14179378954381646785

`A223041(∑[n+2]+4)`
-/

namespace A223043.P14179378954381646785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223043.P14179378954381646785

/-! ## A223043.P5160592244321457077

`lcm((-1)^n, A223041(A167614(n+1)))`
-/

namespace A223043.P5160592244321457077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223041 (A167614 (n + 1)).toNat)

end

end A223043.P5160592244321457077

/-! ## A223043.P2975168805657583739

`A223041(A167614(n+1))+A011731(n)`
-/

namespace A223043.P2975168805657583739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (A167614 (n + 1)).toNat + A011731 n

end

end A223043.P2975168805657583739

/-! ## A223043.P10265501596989235926

`A223041(A167614(n+1))+A025444(n)`
-/

namespace A223043.P10265501596989235926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223041 (A167614 (n + 1)).toNat + A025444 n

end

end A223043.P10265501596989235926

/-!
# A223044: Number of n X 1 0..2 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223044, there is no canonical definition to state claims against.
-/

/-! ## A223044.P8419484527574782827

`A223306(n+1)/A222856(n+1)`
-/

namespace A223044.P8419484527574782827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223306 (n + 1) : ℚ) / (A222856 (n + 1) : ℚ)

end

end A223044.P8419484527574782827

/-! ## A223044.P17647816156594831201

`A222855(n+1)/A222857(n+1)*A223306(n+1)`
-/

namespace A223044.P17647816156594831201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222855 (n + 1) : ℚ) / (A222857 (n + 1) : ℚ) * (A223306 (n + 1) : ℚ)

end

end A223044.P17647816156594831201

/-! ## A223044.P6055474194091175690

`A223306(n+1)/floor(A222857(n+1)/(2^n+A222955(n+1)/2))`
-/

namespace A223044.P6055474194091175690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223306 (n + 1) : ℚ) / (⌊(A222857 (n + 1) : ℚ) / ((2 ^ n : ℚ) + (A222955 (n + 1) : ℚ) / 2)⌋ : ℚ)

end

end A223044.P6055474194091175690

/-! ## A223044.P998158490439513148

`A223046(n+1)/A223045(n+1)`
-/

namespace A223044.P998158490439513148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223046 (n + 1) : ℚ) / (A223045 (n + 1) : ℚ)

end

end A223044.P998158490439513148

/-! ## A223044.P6130406576271071045

`A223046(n+1)*A223160(n+1)/A223748(n+1)`
-/

namespace A223044.P6130406576271071045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223046 (n + 1) * A223160 (n + 1) : ℚ) / (A223748 (n + 1) : ℚ)

end

end A223044.P6130406576271071045

/-!
# A223045: Number of nX2 0..2 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223045, there is no canonical definition to state claims against.
-/

/-! ## A223045.P13537270548339889030

`A223748(n+1)/A223160(n+1)`
-/

namespace A223045.P13537270548339889030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223748 (n + 1) : ℚ) / (A223160 (n + 1) : ℚ)

end

end A223045.P13537270548339889030

/-! ## A223045.P11910235454008558433

`A223161(n+1)/A223162(n+1)*A223748(n+1)`
-/

namespace A223045.P11910235454008558433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223161 (n + 1) : ℚ) / (A223162 (n + 1) : ℚ) * (A223748 (n + 1) : ℚ)

end

end A223045.P11910235454008558433

/-! ## A223045.P4578583836265016475

`A223046(n+1)/A223044(n+1)`
-/

namespace A223045.P4578583836265016475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223046 (n + 1) : ℚ) / (A223044 (n + 1) : ℚ)

end

end A223045.P4578583836265016475

/-! ## A223045.P16427534987205953293

`A222856(n+1)*A223046(n+1)/A223306(n+1)`
-/

namespace A223045.P16427534987205953293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222856 (n + 1) * A223046 (n + 1) : ℚ) / (A223306 (n + 1) : ℚ)

end

end A223045.P16427534987205953293

/-! ## A223045.P6044390951582564039

`A223046(n+1)/(A222855(n+1)/A222857(n+1)*A223306(n+1))`
-/

namespace A223045.P6044390951582564039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223046 (n + 1) : ℚ) / ((A222855 (n + 1) : ℚ) / (A222857 (n + 1) : ℚ) * (A223306 (n + 1) : ℚ))

end

end A223045.P6044390951582564039

/-!
# A223046: Number of nX3 0..2 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223046, there is no canonical definition to state claims against.
-/

/-! ## A223046.P18290029377177772497

`A223044(n+1)*A223045(n+1)`
-/

namespace A223046.P18290029377177772497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223044 (n + 1) * A223045 (n + 1)

end

end A223046.P18290029377177772497

/-! ## A223046.P1075238143669904659

`A223045(n+1)/A222856(n+1)*A223306(n+1)`
-/

namespace A223046.P1075238143669904659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223045 (n + 1) : ℚ) / (A222856 (n + 1) : ℚ) * (A223306 (n + 1) : ℚ)

end

end A223046.P1075238143669904659

/-! ## A223046.P13669208769759136170

`A223044(n+1)/A223160(n+1)*A223748(n+1)`
-/

namespace A223046.P13669208769759136170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223044 (n + 1) : ℚ) / (A223160 (n + 1) : ℚ) * (A223748 (n + 1) : ℚ)

end

end A223046.P13669208769759136170

/-! ## A223046.P14980594485912246189

`A222855(n+1)/A222857(n+1)*A223306(n+1)*A223045(n+1)`
-/

namespace A223046.P14980594485912246189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222855 (n + 1) : ℚ) / (A222857 (n + 1) : ℚ) * (A223306 (n + 1) : ℚ) * (A223045 (n + 1) : ℚ)

end

end A223046.P14980594485912246189

/-! ## A223046.P3200497695029182774

`A223306(n+1)/A222856(n+1)*A223748(n+1)/A223160(n+1)`
-/

namespace A223046.P3200497695029182774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223306 (n + 1) : ℚ) / (A222856 (n + 1) : ℚ) * ((A223748 (n + 1) : ℚ) / (A223160 (n + 1) : ℚ))

end

end A223046.P3200497695029182774

/-!
# A223047: Number of nX4 0..2 arrays with every row and column least squares fitting to a nonnegative slope straight line, with a single point array taken as having zero slope.

The programs for A223047, there is no canonical definition to state claims against.
-/

/-! ## A223047.P4373279084400673354

`A223048(∑[n+3]+7)`
-/

namespace A223047.P4373279084400673354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223048 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223047.P4373279084400673354

/-!
# A223049: Number of nX3 0..3 arrays with exactly floor(nX3/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223049, there is no canonical definition to state claims against.
-/

/-! ## A223049.P4342414748765438801

`A223052(∑[n+3]+1)`
-/

namespace A223049.P4342414748765438801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223049.P4342414748765438801

/-!
# A223050: Number of nX4 0..3 arrays with exactly floor(nX4/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223050, there is no canonical definition to state claims against.
-/

/-! ## A223050.P5961939290975433827

`A223052(A141214(n+1))`
-/

namespace A223050.P5961939290975433827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (A141214 (n + 1)).toNat

end

end A223050.P5961939290975433827

/-! ## A223050.P13436802765143856562

`A223052(A027379(n+2))`
-/

namespace A223050.P13436802765143856562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (A027379 (n + 2)).toNat

end

end A223050.P13436802765143856562

/-!
# A223051: Number of nX5 0..3 arrays with exactly floor(nX5/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223051, there is no canonical definition to state claims against.
-/

/-! ## A223051.P16055772909176035273

`A223052(Δ[A264443(n)])`
-/

namespace A223051.P16055772909176035273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (f1 (n + 1) - f1 n).toNat

end

end A223051.P16055772909176035273

/-!
# A223052: T(n,k)=Number of nXk 0..3 arrays with exactly floor(nXk/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223052, there is no canonical definition to state claims against.
-/

/-! ## A223052.P4496431174191970349

`A259053(n+1)*A291191(A276086(n²))`
-/

namespace A223052.P4496431174191970349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259053 (n + 1) * A291191 (A276086 (n ^ 2)).toNat

end

end A223052.P4496431174191970349

/-! ## A223052.P7935401150957064930

`and(A212536(A000792(2*n+1)), A243808(2*(n+2)))`
-/

namespace A223052.P7935401150957064930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212536 (A000792 (2 * n + 1)).toNat) (A243808 (2 * (n + 2)))

end

end A223052.P7935401150957064930

/-!
# A223053: Number of 2Xn 0..3 arrays with exactly floor(2Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223053, there is no canonical definition to state claims against.
-/

/-! ## A223053.P18013917793653117256

`A223052(∑[n+1]+2)`
-/

namespace A223053.P18013917793653117256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223053.P18013917793653117256

/-! ## A223053.P8274605839772104783

`record[A223052(A114091(n+1)+1)]`
-/

namespace A223053.P8274605839772104783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223053.P8274605839772104783

/-! ## A223053.P9672905557063709646

`record[A010054(n)*A223052(n+2)]`
-/

namespace A223053.P9672905557063709646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223053.P9672905557063709646

/-! ## A223053.P17118558229004674735

`record[char[A000124(n)]*A223052(n+1)]`
-/

namespace A223053.P17118558229004674735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223053.P17118558229004674735

/-! ## A223053.P15403289685704598072

`record[A223052(n+2)/A060538(n+1)]`
-/

namespace A223053.P15403289685704598072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223052 (n + 2) : ℚ) / (A060538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223053.P15403289685704598072

/-!
# A223054: Number of 3Xn 0..3 arrays with exactly floor(3Xn/2) elements equal to at least one horizontal, diagonal or antidiagonal neighbor, with new values introduced in row major 0..3 order.

The programs for A223054, there is no canonical definition to state claims against.
-/

/-! ## A223054.P9592192808736365504

`A223052(∑[n+2]+4)`
-/

namespace A223054.P9592192808736365504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223054.P9592192808736365504

/-! ## A223054.P4437510059813088530

`record[A010054(n)*A223052(n+3)]`
-/

namespace A223054.P4437510059813088530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A223052 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223054.P4437510059813088530

/-! ## A223054.P5372970055634576885

`record[A167374(n)*A223052(n+4)]`
-/

namespace A223054.P5372970055634576885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A223052 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223054.P5372970055634576885

/-! ## A223054.P159121942736205608

`record[A223052(n+4)/A111559(n)]`
-/

namespace A223054.P159121942736205608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223052 (n + 4) : ℚ) / (A111559 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223054.P159121942736205608

/-!
# A223055: Number of n X n 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223055, there is no canonical definition to state claims against.
-/

/-! ## A223055.P8918281729187869746

`A223062(∑[4*n]+1)`
-/

namespace A223055.P8918281729187869746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223055.P8918281729187869746

/-!
# A223056: Number of n X 2 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223056, there is no canonical definition to state claims against.
-/

/-! ## A223056.P14563147269577929064

`A223062(∑[n+1]+2)`
-/

namespace A223056.P14563147269577929064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223056.P14563147269577929064

/-! ## A223056.P1642149267753342367

`A223062(A133263(n+1))+A184946(n)`
-/

namespace A223056.P1642149267753342367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A133263 (n + 1)).toNat + A184946 n

end

end A223056.P1642149267753342367

/-! ## A223056.P8469443704137828370

`lcm(A158388(n), A223062(A167499(n)-3))`
-/

namespace A223056.P8469443704137828370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A223062 (A167499 n - 3).toNat)

end

end A223056.P8469443704137828370

/-! ## A223056.P13734221657193457600

`record[A223062(A101881(n)+1)]`
-/

namespace A223056.P13734221657193457600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223056.P13734221657193457600

/-! ## A223056.P9003705567413421209

`A223062(A133263(n+1))%A268632(n+2)`
-/

namespace A223056.P9003705567413421209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223062 (A133263 (n + 1)).toNat) (A268632 (n + 2))

end

end A223056.P9003705567413421209

/-!
# A223057: Number of n X 3 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223057, there is no canonical definition to state claims against.
-/

/-! ## A223057.P10193200187582805990

`A223062(∑[n+2]+4)`
-/

namespace A223057.P10193200187582805990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223057.P10193200187582805990

/-! ## A223057.P365888919290359378

`A223062(A167614(n+1))+A185294(n)`
-/

namespace A223057.P365888919290359378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A167614 (n + 1)).toNat + A185294 n

end

end A223057.P365888919290359378

/-! ## A223057.P10073434359525963207

`lcm(A033999(n), A223062(A167614(n+1)))`
-/

namespace A223057.P10073434359525963207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A223062 (A167614 (n + 1)).toNat)

end

end A223057.P10073434359525963207

/-! ## A223057.P16617193758780109168

`or(A000007(n), A223062(A167614(n+1)))`
-/

namespace A223057.P16617193758780109168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223062 (A167614 (n + 1)).toNat)

end

end A223057.P16617193758780109168

/-! ## A223057.P7815191355128288503

`or(A102677(n), A223062(A167614(n+1)))`
-/

namespace A223057.P7815191355128288503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102677 n) (A223062 (A167614 (n + 1)).toNat)

end

end A223057.P7815191355128288503

/-!
# A223058: Number of nX4 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223058, there is no canonical definition to state claims against.
-/

/-! ## A223058.P4517827501793949120

`A223062(A052905(n)+9)`
-/

namespace A223058.P4517827501793949120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A052905 n + 9).toNat

end

end A223058.P4517827501793949120

/-! ## A223058.P7431434219369745700

`A223062(A167614(n+2)+1)`
-/

namespace A223058.P7431434219369745700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A167614 (n + 2) + 1).toNat

end

end A223058.P7431434219369745700

/-! ## A223058.P4552010086948673313

`A223062(A141214(n+1))`
-/

namespace A223058.P4552010086948673313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A141214 (n + 1)).toNat

end

end A223058.P4552010086948673313

/-! ## A223058.P6147946095705400770

`A223062(A374004(n+1))`
-/

namespace A223058.P6147946095705400770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A374004 (n + 1)).toNat

end

end A223058.P6147946095705400770

/-! ## A223058.P2323864353161636231

`A223062(A155212(n)+5)`
-/

namespace A223058.P2323864353161636231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A155212 n + 5).toNat

end

end A223058.P2323864353161636231

/-!
# A223059: Number of nX5 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223059, there is no canonical definition to state claims against.
-/

/-! ## A223059.P15831923286743274409

`A223062(A374005(n+1))`
-/

namespace A223059.P15831923286743274409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A374005 (n + 1)).toNat

end

end A223059.P15831923286743274409

/-! ## A223059.P14828588591162480847

`A223062(eq[2, A092921(n)])`
-/

namespace A223059.P14828588591162480847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223059.P14828588591162480847

/-! ## A223059.P17701958401026942798

`A223062(Δ[A023545(n+1)])`
-/

namespace A223059.P17701958401026942798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (f1 (n + 1) - f1 n).toNat

end

end A223059.P17701958401026942798

/-!
# A223060: Number of n X 6 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223060, there is no canonical definition to state claims against.
-/

/-! ## A223060.P4764082460554836973

`A223062(eq[7, A131818(n+1)])`
-/

namespace A223060.P4764082460554836973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223060.P4764082460554836973

/-! ## A223060.P15796937398993899343

`A223062(A374007(n+1))`
-/

namespace A223060.P15796937398993899343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (A374007 (n + 1)).toNat

end

end A223060.P15796937398993899343

/-! ## A223060.P6444070309395981411

`A223062(eq[8, A185782(n+1)])`
-/

namespace A223060.P6444070309395981411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223060.P6444070309395981411

/-!
# A223062: T(n,k)=Number of nXk 0..3 arrays with all horizontally or vertically connected equal values in a straight line, and new values 0..3 introduced in row major order.

The programs for A223062, there is no canonical definition to state claims against.
-/

/-! ## A223062.P4814663185932264934

`A208788(n+1)-A036632(A036640(n))`
-/

namespace A223062.P4814663185932264934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (n + 1) - A036632 (A036640 n).toNat

end

end A223062.P4814663185932264934

/-! ## A223062.P10496681730490446173

`A208788(n+1)-A086012(A000392(n))`
-/

namespace A223062.P10496681730490446173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (n + 1) - A086012 (A000392 n).toNat

end

end A223062.P10496681730490446173

/-! ## A223062.P11327124372033537181

`A208788(n+1)-A044941(A068875(n))`
-/

namespace A223062.P11327124372033537181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (n + 1) - A044941 (A068875 n).toNat

end

end A223062.P11327124372033537181

/-! ## A223062.P13880621406554857651

`A208788(n+1)-A054908(A097006(n))`
-/

namespace A223062.P13880621406554857651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208788 (n + 1) - A054908 (A097006 n).toNat

end

end A223062.P13880621406554857651

/-!
# A223063: Number of n X 3 0..3 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223063, there is no canonical definition to state claims against.
-/

/-! ## A223063.P8284728131903829634

`A223066(∑[n+2]+4)`
-/

namespace A223063.P8284728131903829634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223063.P8284728131903829634

/-! ## A223063.P13103937896670575688

`lcm(2, A223066(A167614(n+1)))`
-/

namespace A223063.P13103937896670575688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223066 (A167614 (n + 1)).toNat)

end

end A223063.P13103937896670575688

/-! ## A223063.P4469212560512362108

`A223066(A167614(n+1))+A025469(n)`
-/

namespace A223063.P4469212560512362108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (A167614 (n + 1)).toNat + A025469 n

end

end A223063.P4469212560512362108

/-! ## A223063.P454061993067265630

`A223066(A167614(n+1))+A180649(n)`
-/

namespace A223063.P454061993067265630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (A167614 (n + 1)).toNat + A180649 n

end

end A223063.P454061993067265630

/-! ## A223063.P939004118983047701

`A043562(n)*A223066(A167614(n+1))`
-/

namespace A223063.P939004118983047701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n * A223066 (A167614 (n + 1)).toNat

end

end A223063.P939004118983047701

/-!
# A223064: Number of nX4 0..3 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223064, there is no canonical definition to state claims against.
-/

/-! ## A223064.P15033716258747060034

`A223066(∑[n+3]+7)`
-/

namespace A223064.P15033716258747060034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223064.P15033716258747060034

/-!
# A223065: Number of nX5 0..3 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223065, there is no canonical definition to state claims against.
-/

/-! ## A223065.P8854305021793533632

`A223066(A167499(n+3))`
-/

namespace A223065.P8854305021793533632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (A167499 (n + 3)).toNat

end

end A223065.P8854305021793533632

/-! ## A223065.P10862230717630344782

`A223066(A155212(n)+13)`
-/

namespace A223065.P10862230717630344782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (A155212 n + 13).toNat

end

end A223065.P10862230717630344782

/-! ## A223065.P17389006192569828717

`A223066(A056000(n)+15)`
-/

namespace A223065.P17389006192569828717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (A056000 n + 15).toNat

end

end A223065.P17389006192569828717

/-! ## A223065.P15728527025146529534

`A223066(eq[7, A066657(n)])`
-/

namespace A223065.P15728527025146529534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223066 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223065.P15728527025146529534

/-!
# A223066: T(n,k)=Number of nXk 0..3 arrays with every row having the same least squares slope fit to a straight line, and every column the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223066, there is no canonical definition to state claims against.
-/

/-! ## A223066.P11187712904056260491

`∏{e}[A014371(n+4), A175668(#)]`
-/

namespace A223066.P11187712904056260491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A175668 (Nat.factorization (f1 n).natAbs p)

end

end A223066.P11187712904056260491

/-! ## A223066.P4298915251625725729

`A320100(A022178(n))^A143182(n)`
-/

namespace A223066.P4298915251625725729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320100 (A022178 n).toNat : ℚ) ^ (A143182 n : ℤ)

end

end A223066.P4298915251625725729

/-! ## A223066.P504291527331699262

`A122736(A027023(3*n))^A059897(n+1)`
-/

namespace A223066.P504291527331699262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122736 (A027023 (3 * n)).toNat : ℚ) ^ (A059897 (n + 1) : ℤ)

end

end A223066.P504291527331699262

/-!
# A223067: A sequence related to the period T of a simple gravity pendulum for arbitrary amplitudes.

The programs for A223067, there is no canonical definition to state claims against.
-/

/-! ## A223067.P16892559458069830318

`A280442(n)/A280443(n)`
-/

namespace A223067.P16892559458069830318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280442 n : ℚ) / (A280443 n : ℚ)

end

end A223067.P16892559458069830318

/-! ## A223067.P560112123273312566

`A280442(C(n, ∏{e}[n+1, #]))`
-/

namespace A223067.P560112123273312566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280442 (Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A223067.P560112123273312566

/-! ## A223067.P11887383068796913532

`A280442(C(n, (n+1)/∏{p}[n+1, #]))`
-/

namespace A223067.P11887383068796913532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280442 (Nat.choose n (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A223067.P11887383068796913532

/-!
# A223068: A sequence related to the period T of a simple gravity pendulum for arbitrary amplitudes.

The programs for A223068, there is no canonical definition to state claims against.
-/

/-! ## A223068.P8642004019383932597

`A046161(n)*A067624(n)/A280443(n)`
-/

namespace A223068.P8642004019383932597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046161 n * A067624 n : ℚ) / (A280443 n : ℚ)

end

end A223068.P8642004019383932597

/-! ## A223068.P10815423697322131359

`A010050(n)*A046644(A000302(n))`
-/

namespace A223068.P10815423697322131359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010050 n * A046644 (A000302 n).toNat

end

end A223068.P10815423697322131359

/-! ## A223068.P1417687539419999440

`A000142(2*n)*A046644(A000302(n))`
-/

namespace A223068.P1417687539419999440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (2 * n) * A046644 (A000302 n).toNat

end

end A223068.P1417687539419999440

/-!
# A223069: Number of n X 2 0..3 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223069, there is no canonical definition to state claims against.
-/

/-! ## A223069.P14082564556320423961

`root(A204303(Δ[n²]), 2)`
-/

namespace A223069.P14082564556320423961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204303 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A223069.P14082564556320423961

/-! ## A223069.P2288211488661171038

`sqrt(A204303(2*n+1))`
-/

namespace A223069.P2288211488661171038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204303 (2 * n + 1) : ℝ)

end

end A223069.P2288211488661171038

/-! ## A223069.P18399987352237444305

`record[sqrt(A204303((n+1)/2^val(n+1, 2)))]`
-/

namespace A223069.P18399987352237444305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A204303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223069.P18399987352237444305

/-! ## A223069.P16848570276653127465

`sqrt(record[A204303(n+1)/A033999(n)])`
-/

namespace A223069.P16848570276653127465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204303 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A223069.P16848570276653127465

/-! ## A223069.P10450742147325388271

`record[root(A204303(n+1), A319048(n+1))]`
-/

namespace A223069.P10450742147325388271
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204303 (n + 1) : ℝ) ^ (1 / (A319048 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223069.P10450742147325388271

/-!
# A223070: Number of nX3 0..3 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223070, there is no canonical definition to state claims against.
-/

/-! ## A223070.P12861144380509233785

`A223071(∑[n+2]+4)`
-/

namespace A223070.P12861144380509233785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223071 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223070.P12861144380509233785

/-! ## A223070.P16944276213910677071

`lcm(2, A223071(A167614(n+1)))`
-/

namespace A223070.P16944276213910677071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223071 (A167614 (n + 1)).toNat)

end

end A223070.P16944276213910677071

/-! ## A223070.P10732559275525314596

`A223071(A167614(n+1))+A025437(n)`
-/

namespace A223070.P10732559275525314596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223071 (A167614 (n + 1)).toNat + A025437 n

end

end A223070.P10732559275525314596

/-! ## A223070.P4040292581740073791

`A223071(A167614(n+1))+A025468(n)`
-/

namespace A223070.P4040292581740073791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223071 (A167614 (n + 1)).toNat + A025468 n

end

end A223070.P4040292581740073791

/-!
# A223071: T(n,k)=Number of nXk 0..3 arrays with successive rows and columns fitting to straight lines with nondecreasing slope, with a single point array taken as having zero slope.

The programs for A223071, there is no canonical definition to state claims against.
-/

/-! ## A223071.P9427694014262341758

`A351381(A007825(n))`
-/

namespace A223071.P9427694014262341758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351381 (A007825 n).toNat

end

end A223071.P9427694014262341758

/-!
# A223072: Number of nX2 0..2 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223072, there is no canonical definition to state claims against.
-/

/-! ## A223072.P17036949898878894023

`A223074(∑[n+1]+2)`
-/

namespace A223072.P17036949898878894023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223074 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223072.P17036949898878894023

/-! ## A223072.P429693344698163137

`record[A223074(A101881(n)+3)]`
-/

namespace A223072.P429693344698163137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223074 (A101881 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223072.P429693344698163137

/-! ## A223072.P12130107127493946942

`record[A223074(n+3)/A221780(n+1)]`
-/

namespace A223072.P12130107127493946942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223074 (n + 3) : ℚ) / (A221780 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223072.P12130107127493946942

/-! ## A223072.P14927251464743194128

`record[A023531(n+1)*A223074(n+1)]`
-/

namespace A223072.P14927251464743194128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) * A223074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223072.P14927251464743194128

/-!
# A223073: Number of nX3 0..2 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223073, there is no canonical definition to state claims against.
-/

/-! ## A223073.P5334499681699086285

`A223074(∑[n+2]+4)`
-/

namespace A223073.P5334499681699086285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223074 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223073.P5334499681699086285

/-! ## A223073.P1102122909216014601

`lcm(2, A223074(A167614(n+1)))`
-/

namespace A223073.P1102122909216014601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223074 (A167614 (n + 1)).toNat)

end

end A223073.P1102122909216014601

/-! ## A223073.P8220917211686932835

`A223074(A167614(n+1))+A084904(n)`
-/

namespace A223073.P8220917211686932835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223074 (A167614 (n + 1)).toNat + A084904 n

end

end A223073.P8220917211686932835

/-! ## A223073.P16111987226578955570

`A223074(A167614(n+1))+A107846(n)`
-/

namespace A223073.P16111987226578955570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223074 (A167614 (n + 1)).toNat + A107846 n

end

end A223073.P16111987226578955570

/-!
# A223074: T(n,k)=Number of nXk 0..2 arrays with no adjacent rows or columns having the same least squares slope fit to a straight line, with a single point array taken as having zero slope.

The programs for A223074, there is no canonical definition to state claims against.
-/

/-! ## A223074.P856646189129990001

`A130675(A034472(n))*A222896(n+1)`
-/

namespace A223074.P856646189129990001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A034472 n).toNat * A222896 (n + 1)

end

end A223074.P856646189129990001

/-! ## A223074.P16413758895931769721

`A222896(A032559(n+1))*A332305(n)`
-/

namespace A223074.P16413758895931769721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222896 (A032559 (n + 1)).toNat * A332305 n

end

end A223074.P16413758895931769721

/-! ## A223074.P10289651638248627538

`A050379(A056276(n+1))*A222896(n+1)`
-/

namespace A223074.P10289651638248627538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A056276 (n + 1)).toNat * A222896 (n + 1)

end

end A223074.P10289651638248627538

/-! ## A223074.P8278844655120392024

`A001223(A002310(n))*A222896(n+1)`
-/

namespace A223074.P8278844655120392024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A002310 n).toNat * A222896 (n + 1)

end

end A223074.P8278844655120392024

/-!
# A223075: O.g.f. satisfies: A(x) = Sum_{n>=0} n^n * x^n * A((2*n-1)*x)^n/n! * exp(-n*x*A((2*n-1)*x)).

The programs for A223075, there is no canonical definition to state claims against.
-/

/-! ## A223075.P13859138893836205480

`A255072(n!²)`
-/

namespace A223075.P13859138893836205480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (Nat.factorial n ^ 2)

end

end A223075.P13859138893836205480

/-!
# A223077: Positive integers, written in base 3, with the property that if the base-3 representation is reversed the result is twice the original number.

The programs for A223077, there is no canonical definition to state claims against.
-/

/-! ## A223077.P3404510255164269989

`92*A061851(n+1)`
-/

namespace A223077.P3404510255164269989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  92 * A061851 (n + 1)

end

end A223077.P3404510255164269989

/-! ## A223077.P17218916639435768276

`92/99*A001232(n+1)`
-/

namespace A223077.P17218916639435768276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (92 : ℚ) / 99 * (A001232 (n + 1) : ℚ)

end

end A223077.P17218916639435768276

/-! ## A223077.P9638474261734725164

`92*∩[A057148(n+1), A061852(n+1)]`
-/

namespace A223077.P9638474261734725164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  92 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223077.P9638474261734725164

/-! ## A223077.P17621412867920477394

`A222815(n+1)%(A061851(n+1)+A001232(n+1))`
-/

namespace A223077.P17621412867920477394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222815 (n + 1)) (A061851 (n + 1) + A001232 (n + 1))

end

end A223077.P17621412867920477394

/-! ## A223077.P292331634578824662

`92*A007088(A222813(n+1))`
-/

namespace A223077.P292331634578824662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  92 * A007088 (A222813 (n + 1)).toNat

end

end A223077.P292331634578824662

/-!
# A223078: Positive integers with the property that if the base-4 representation is reversed the result is three times the original number.

The programs for A223078, there is no canonical definition to state claims against.
-/

/-! ## A223078.P7718485169129307432

`A091078(n+1)/3`
-/

namespace A223078.P7718485169129307432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091078 (n + 1) : ℚ) / 3

end

end A223078.P7718485169129307432

/-! ## A223078.P17064689713632656917

`A006288(A173951(n+1))`
-/

namespace A223078.P17064689713632656917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A173951 (n + 1)).toNat

end

end A223078.P17064689713632656917

/-!
# A223079: Positive integers, written in base 4, with the property that if the base-4 representation is reversed the result is three times the original number.

The programs for A223079, there is no canonical definition to state claims against.
-/

/-! ## A223079.P17977064953682575605

`93*A061851(n+1)`
-/

namespace A223079.P17977064953682575605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  93 * A061851 (n + 1)

end

end A223079.P17977064953682575605

/-! ## A223079.P4985117588970678732

`93/99*A001232(n+1)`
-/

namespace A223079.P4985117588970678732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (93 : ℚ) / 99 * (A001232 (n + 1) : ℚ)

end

end A223079.P4985117588970678732

/-! ## A223079.P11151117711592766737

`93*A007088(A222813(n+1))`
-/

namespace A223079.P11151117711592766737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  93 * A007088 (A222813 (n + 1)).toNat

end

end A223079.P11151117711592766737

/-! ## A223079.P6183516795137083274

`A223077(n+1)+A061851(n+1)`
-/

namespace A223079.P6183516795137083274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223077 (n + 1) + A061851 (n + 1)

end

end A223079.P6183516795137083274

/-! ## A223079.P8438699687846370200

`A223077(n+1)+A001232(n+1)/99`
-/

namespace A223079.P8438699687846370200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223077 (n + 1) : ℚ) + (A001232 (n + 1) : ℚ) / 99

end

end A223079.P8438699687846370200

/-!
# A223080: Numbers n with distinct digits such that the reversal of n divides n.

The programs for A223080, there is no canonical definition to state claims against.
-/

/-! ## A223080.P5256333306663375327

`record[A137564(A169824(n+1))]`
-/

namespace A223080.P5256333306663375327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A169824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223080.P5256333306663375327

/-! ## A223080.P16328932105361123453

`filter[A169824(n+1), A178788(#)]`
-/

namespace A223080.P16328932105361123453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A223080.P16328932105361123453

/-! ## A223080.P6320767332709370234

`∩[A169824(n+1), A247807(n+1)]`
-/

namespace A223080.P6320767332709370234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223080.P6320767332709370234

/-! ## A223080.P6598500107704517338

`∩[A009995(n+1), A096091(n+1)]`
-/

namespace A223080.P6598500107704517338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223080.P6598500107704517338

/-! ## A223080.P6639515342417182218

`∩[A009995(n+1), A169824(n+1)]`
-/

namespace A223080.P6639515342417182218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A223080.P6639515342417182218

/-!
# A223081: Numbers n with distinct digits such that n divides the reversal of n.

The programs for A223081, there is no canonical definition to state claims against.
-/

/-! ## A223081.P12019842295302157739

`∪[A032559(n+1), A008919(A339507(n))]`
-/

namespace A223081.P12019842295302157739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (A339507 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223081.P12019842295302157739

/-! ## A223081.P16733031220185959975

`∪[A276142(n+1), A008919(A339507(n))]`
-/

namespace A223081.P16733031220185959975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (A339507 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A223081.P16733031220185959975

/-! ## A223081.P13121812180246597498

`A004151(∪[A008919(n+1), A032555(n+1)])`
-/

namespace A223081.P13121812180246597498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A223081.P13121812180246597498

/-! ## A223081.P11123511837242561086

`A004151(∪[A008919(n+1), A032559(n+1)])`
-/

namespace A223081.P11123511837242561086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A223081.P11123511837242561086

/-! ## A223081.P17490203421725075903

`A028310(∪[A008919(n+1), A032555(n+1)])`
-/

namespace A223081.P17490203421725075903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A223081.P17490203421725075903

/-!
# A223083: Trajectory of 64 under the map n-> A006369(n).

The programs for A223083, there is no canonical definition to state claims against.
-/

/-! ## A223083.P17108947419091789596

`A185589(n+3)+A121373(A075430(2*n+5))`
-/

namespace A223083.P17108947419091789596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185589 (n + 3) + A121373 (A075430 (2 * n + 5)).toNat

end

end A223083.P17108947419091789596

/-! ## A223083.P3676432615187100877

`A185589(n+3)+A121373(A000040(3*n+2))`
-/

namespace A223083.P3676432615187100877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185589 (n + 3) + A121373 (A000040 (3 * n + 2)).toNat

end

end A223083.P3676432615187100877

/-! ## A223083.P17684982269559388694

`A086436(A000040(3*n+4))*A185589(n+3)`
-/

namespace A223083.P17684982269559388694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A000040 (3 * n + 4)).toNat * A185589 (n + 3)

end

end A223083.P17684982269559388694

/-! ## A223083.P1223973862559748405

`A185589(n+3)%A274363(A008726(n))`
-/

namespace A223083.P1223973862559748405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185589 (n + 3)) (A274363 (A008726 n).toNat)

end

end A223083.P1223973862559748405

/-! ## A223083.P13245852459611542952

`A003415(A158015(n+1))*A185589(n+3)`
-/

namespace A223083.P13245852459611542952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A158015 (n + 1)).toNat * A185589 (n + 3)

end

end A223083.P13245852459611542952

/-! ## A223083.P7101949867234636630

`A097325(A232558(2*(n+1)))*A185589(n+3)`
-/

namespace A223083.P7101949867234636630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A232558 (2 * (n + 1))).toNat * A185589 (n + 3)

end

end A223083.P7101949867234636630

/-! ## A223083.P37814359494937014

`A003415(A167412(n+1))*A185589(n+3)`
-/

namespace A223083.P37814359494937014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A167412 (n + 1)).toNat * A185589 (n + 3)

end

end A223083.P37814359494937014

/-! ## A223083.P11654968851108949618

`A185589(n+3)+A121373(A075432(n+1))`
-/

namespace A223083.P11654968851108949618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185589 (n + 3) + A121373 (A075432 (n + 1)).toNat

end

end A223083.P11654968851108949618

/-! ## A223083.P8126389188364078308

`A001222(A338083(n+1))*A185589(n+3)`
-/

namespace A223083.P8126389188364078308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A338083 (n + 1)).toNat * A185589 (n + 3)

end

end A223083.P8126389188364078308

/-!
# A223084: Trajectory of 80 under the map n-> A006369(n).

The programs for A223084, there is no canonical definition to state claims against.
-/

/-! ## A223084.P9197356425029310897

`A006369(a(n-1))` with `a(0)=80`
-/

namespace A223084.P9197356425029310897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A223084.P9197356425029310897

/-! ## A223084.P17872330106916349203

`sqrt(A173536(a(n-1)+2))` with `a(0)=80`
-/

namespace A223084.P17872330106916349203
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [80] fun n a =>
  Real.sqrt (A173536 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℝ)

end

end A223084.P17872330106916349203

/-! ## A223084.P5887584114490024659

`A265667(a(n-1)+1)-1` with `a(0)=80`
-/

namespace A223084.P5887584114490024659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A265667 (a (n - 1) + 1).toNat - 1

end

end A223084.P5887584114490024659

/-! ## A223084.P14959557884374973173

`lcm(2, A042965(a(n-1)+1))/2` with `a(0)=80`
-/

namespace A223084.P14959557884374973173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [80] fun n a =>
  (Int.lcm 2 (A042965 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ) / 2

end

end A223084.P14959557884374973173

/-! ## A223084.P187530624445495570

`A168222(A006368(a(n-1)))` with `a(0)=80`
-/

namespace A223084.P187530624445495570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A168222 (A006368 (a (n - 1)).toNat).toNat

end

end A223084.P187530624445495570

/-!
# A223085: Trajectory of 82 under the map n-> A006369(n).

The programs for A223085, there is no canonical definition to state claims against.
-/

/-! ## A223085.P7995603842614518628

`A006369(a(n-1))` with `a(0)=82`
-/

namespace A223085.P7995603842614518628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A006369 (a (n - 1)).toNat

end

end A223085.P7995603842614518628

/-! ## A223085.P5194085794866522691

`sqrt(A173536(a(n-1)+2))` with `a(0)=82`
-/

namespace A223085.P5194085794866522691
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [82] fun n a =>
  Real.sqrt (A173536 (SequenceMachineLib.roundAway (a (n - 1) + 2)).toNat : ℝ)

end

end A223085.P5194085794866522691

/-! ## A223085.P1395226790290670810

`A265667(a(n-1)+1)-1` with `a(0)=82`
-/

namespace A223085.P1395226790290670810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A265667 (a (n - 1) + 1).toNat - 1

end

end A223085.P1395226790290670810

/-! ## A223085.P14193147224375447435

`lcm(2, A042965(a(n-1)+1))/2` with `a(0)=82`
-/

namespace A223085.P14193147224375447435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [82] fun n a =>
  (Int.lcm 2 (A042965 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat) : ℚ) / 2

end

end A223085.P14193147224375447435

/-! ## A223085.P945288498485996701

`A168222(A006368(a(n-1)))` with `a(0)=82`
-/

namespace A223085.P945288498485996701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A168222 (A006368 (a (n - 1)).toNat).toNat

end

end A223085.P945288498485996701

/-! ## A223085.P5607640641115566128

`A168222(A351412(xor(1, a(n-1))))` with `a(0)=82`
-/

namespace A223085.P5607640641115566128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A168222 (A351412 (Int.xor 1 (a (n - 1))).toNat).toNat

end

end A223085.P5607640641115566128

/-! ## A223085.P14456246408543030373

`A168222(floor(A165355(a(n-1))/2))` with `a(0)=82`
-/

namespace A223085.P14456246408543030373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A168222 ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋.toNat

end

end A223085.P14456246408543030373

/-!
# A223086: Trajectory of 64 under the map n-> A006368(n).

The programs for A223086, there is no canonical definition to state claims against.
-/

/-! ## A223086.P3051355291794038538

`A006368(a(n-1))` with `a(0)=64`
-/

namespace A223086.P3051355291794038538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A223086.P3051355291794038538

/-! ## A223086.P11575179549624423042

`A351412(xor(1, a(n-1)))` with `a(0)=64`
-/

namespace A223086.P11575179549624423042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A223086.P11575179549624423042

/-! ## A223086.P1997413195050318845

`floor(A165355(a(n-1))/2)` with `a(0)=64`
-/

namespace A223086.P1997413195050318845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A223086.P1997413195050318845

/-! ## A223086.P11754952132275879599

`A342131(a(n-1)-1)+1` with `a(0)=64`
-/

namespace A223086.P11754952132275879599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A223086.P11754952132275879599

/-! ## A223086.P16001912949867656950

`A006368(ceil(a(A023443(n))))` with `a(0)=64`

`ceil` is left out, it is the identity on integers.
-/

namespace A223086.P16001912949867656950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A223086.P16001912949867656950

/-! ## A223086.P1684360813480802180

`A168221(A006369(a(n-1)))` with `a(0)=64`
-/

namespace A223086.P1684360813480802180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64] fun n a =>
  A168221 (A006369 (a (n - 1)).toNat).toNat

end

end A223086.P1684360813480802180

/-!
# A223087: Trajectory of 80 under the map n-> A006368(n).

The programs for A223087, there is no canonical definition to state claims against.
-/

/-! ## A223087.P2268150385424245398

`A006368(a(n-1))` with `a(0)=80`
-/

namespace A223087.P2268150385424245398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A223087.P2268150385424245398

/-! ## A223087.P6434574485639010894

`A351412(xor(1, a(n-1)))` with `a(0)=80`
-/

namespace A223087.P6434574485639010894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A223087.P6434574485639010894

/-! ## A223087.P7454935181828202595

`floor(A165355(a(n-1))/2)` with `a(0)=80`
-/

namespace A223087.P7454935181828202595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A223087.P7454935181828202595

/-! ## A223087.P11619678993459713366

`A342131(a(n-1)-1)+1` with `a(0)=80`
-/

namespace A223087.P11619678993459713366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A223087.P11619678993459713366

/-! ## A223087.P11283299947191986047

`A006368(ceil(a(A023443(n))))` with `a(0)=80`

`ceil` is left out, it is the identity on integers.
-/

namespace A223087.P11283299947191986047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [80] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A223087.P11283299947191986047

/-!
# A223088: Trajectory of 82 under the map n-> A006368(n).

The programs for A223088, there is no canonical definition to state claims against.
-/

/-! ## A223088.P11593101106380788704

`A006368(a(n-1))` with `a(0)=82`
-/

namespace A223088.P11593101106380788704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A006368 (a (n - 1)).toNat

end

end A223088.P11593101106380788704

/-! ## A223088.P11954389340369316085

`A351412(xor(1, a(n-1)))` with `a(0)=82`
-/

namespace A223088.P11954389340369316085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A351412 (Int.xor 1 (a (n - 1))).toNat

end

end A223088.P11954389340369316085

/-! ## A223088.P11335856309427227349

`floor(A165355(a(n-1))/2)` with `a(0)=82`
-/

namespace A223088.P11335856309427227349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  ⌊(A165355 (a (n - 1)).toNat : ℚ) / 2⌋

end

end A223088.P11335856309427227349

/-! ## A223088.P254512826114197965

`A342131(a(n-1)-1)+1` with `a(0)=82`
-/

namespace A223088.P254512826114197965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A342131 (a (n - 1) - 1).toNat + 1

end

end A223088.P254512826114197965

/-! ## A223088.P2509093762993124130

`A006368(ceil(a(A023443(n))))` with `a(0)=82`

`ceil` is left out, it is the identity on integers.
-/

namespace A223088.P2509093762993124130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A006368 (a (A023443 n).toNat).toNat

end

end A223088.P2509093762993124130

/-! ## A223088.P4127677419936471206

`A168221(A006369(a(n-1)))` with `a(0)=82`
-/

namespace A223088.P4127677419936471206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [82] fun n a =>
  A168221 (A006369 (a (n - 1)).toNat).toNat

end

end A223088.P4127677419936471206

/-!
# A223091: Numbers k such that sigma(k - 2) = sigma(k + 2).

The programs for A223091, there is no canonical definition to state claims against.
-/

/-! ## A223091.P249464912029554716

`A015863(n+1)+2`
-/

namespace A223091.P249464912029554716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015863 (n + 1) + 2

end

end A223091.P249464912029554716

/-! ## A223091.P11001475284406459209

`A009056(A015863(n+1))`
-/

namespace A223091.P11001475284406459209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A015863 (n + 1)).toNat

end

end A223091.P11001475284406459209

/-! ## A223091.P7062099813630532880

`eq[A039653(A020705(n)), A039653(n)]+2`
-/

namespace A223091.P7062099813630532880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A020705 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A223091.P7062099813630532880

/-!
# A223092: Triangle read by rows: let T(n,k) (for n >= 0, 0 <= k <= n) be the number of walks from (0,0) to (n,k) using steps (1,1), (1,0), (1,-1) and (0,-1); n-th row of triangle gives T(n,n), T(n,n-1), ..., T(n,0).

The programs for A223092, there is no canonical definition to state claims against.
-/

/-! ## A223092.P10515180264032899486

`A071948(n)-A307598(A071948(n))`
-/

namespace A223092.P10515180264032899486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 n - A307598 (A071948 n).toNat

end

end A223092.P10515180264032899486

/-! ## A223092.P14722899821369766349

`A197956(A270436(2*n+1)-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A223092.P14722899821369766349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197956 (A270436 (2 * n + 1) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A223092.P14722899821369766349

/-! ## A223092.P18207354780148976708

`A071948(n)-A185014(A006822(n))`
-/

namespace A223092.P18207354780148976708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 n - A185014 (A006822 n).toNat

end

end A223092.P18207354780148976708

/-! ## A223092.P15330451712436893336

`A071948(n)-A108730(A280567(n))`
-/

namespace A223092.P15330451712436893336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 n - A108730 (A280567 n).toNat

end

end A223092.P15330451712436893336

/-! ## A223092.P4126888882179380059

`A071948(n)-A025465(A055228(n))`
-/

namespace A223092.P4126888882179380059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 n - A025465 (A055228 n).toNat

end

end A223092.P4126888882179380059

/-!
# A223093: Number of foldings of n labeled stamps in which leaf 1 is inwards and leaf n outwards (or leaf 1 outwards and leaf n inwards).

The programs for A223093, there is no canonical definition to state claims against.
-/

/-! ## A223093.P1529831833733913069

`A000682(n+2)-A077014(n+1)`
-/

namespace A223093.P1529831833733913069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 2) - A077014 (n + 1)

end

end A223093.P1529831833733913069

/-! ## A223093.P2701408432678162977

`A223094(n+1)-A223095(n+1)`
-/

namespace A223093.P2701408432678162977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223094 (n + 1) - A223095 (n + 1)

end

end A223093.P2701408432678162977

/-! ## A223093.P13804895143766371835

`A223094(n+1)-A000034(n)*A217318(n+1)`
-/

namespace A223093.P13804895143766371835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223094 (n + 1) - A000034 n * A217318 (n + 1)

end

end A223093.P13804895143766371835

/-! ## A223093.P3193598569819954315

`A000136(n+1)-(A223094(n+1)+A077014(n+1))`
-/

namespace A223093.P3193598569819954315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000136 (n + 1) - (A223094 (n + 1) + A077014 (n + 1))

end

end A223093.P3193598569819954315

/-! ## A223093.P2356544059817134603

`A000136(n+1)-(A223095(n+1)+A000682(n+2))`
-/

namespace A223093.P2356544059817134603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000136 (n + 1) - (A223095 (n + 1) + A000682 (n + 2))

end

end A223093.P2356544059817134603

/-!
# A223094: Number of foldings of n labeled stamps in which leaf n is inwards.

The programs for A223094, there is no canonical definition to state claims against.
-/

/-! ## A223094.P8504894180526241852

`A000136(n+1)-A000682(n+2)`
-/

namespace A223094.P8504894180526241852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000136 (n + 1) - A000682 (n + 2)

end

end A223094.P8504894180526241852

/-! ## A223094.P11479165527178895997

`n*A000682(n+1)-Δ[A000682(n+1)]`
-/

namespace A223094.P11479165527178895997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000682 (n + 1) - (f1 (n + 1) - f1 n)

end

end A223094.P11479165527178895997

/-! ## A223094.P3236743083525856635

`(n+1)*A000682(n+1)-A000682(n+2)`
-/

namespace A223094.P3236743083525856635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000682 (n + 1) - A000682 (n + 2)

end

end A223094.P3236743083525856635

/-! ## A223094.P14769999715390852148

`A000034(n)*A227167(n+1)-A000682(n+2)`
-/

namespace A223094.P14769999715390852148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A227167 (n + 1) - A000682 (n + 2)

end

end A223094.P14769999715390852148

/-! ## A223094.P7518270449815747978

`A223095(n+1)+A223093(n+1)`
-/

namespace A223094.P7518270449815747978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223095 (n + 1) + A223093 (n + 1)

end

end A223094.P7518270449815747978

/-!
# A223095: Number of foldings of n labeled stamps in which both end leaves are inwards.

The programs for A223095, there is no canonical definition to state claims against.
-/

/-! ## A223095.P185868452646359478

`(2-(n+1)%2)*A217318(n+1)`
-/

namespace A223095.P185868452646359478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (((n + 1) % 2 : ℕ) : ℤ)) * A217318 (n + 1)

end

end A223095.P185868452646359478

/-! ## A223095.P11808663793626543323

`A223094(n+1)-A223093(n+1)`
-/

namespace A223095.P11808663793626543323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223094 (n + 1) - A223093 (n + 1)

end

end A223095.P11808663793626543323

/-! ## A223095.P11324029976807688880

`A000136(n+1)+A077014(n+1)-2*A000682(n+2)`
-/

namespace A223095.P11324029976807688880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000136 (n + 1) + A077014 (n + 1) - 2 * A000682 (n + 2)

end

end A223095.P11324029976807688880

/-! ## A223095.P12162434939664256783

`A000034(n)*A217318(n+1)`
-/

namespace A223095.P12162434939664256783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A217318 (n + 1)

end

end A223095.P12162434939664256783

/-! ## A223095.P13266099212777568048

`A084642(n)*A217318(n+1)`
-/

namespace A223095.P13266099212777568048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A217318 (n + 1)

end

end A223095.P13266099212777568048

/-!
# A223096: Number of symmetric meander shapes with 2n+1 crossings.

The programs for A223096, there is no canonical definition to state claims against.
-/

/-! ## A223096.P10292927196726247800

`A277996(n+1)-A033270(A309861(n))`
-/

namespace A223096.P10292927196726247800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277996 (n + 1) - A033270 (A309861 n).toNat

end

end A223096.P10292927196726247800

/-! ## A223096.P7034777538453457429

`A277996(n+1)-A341508(A036726(n))`
-/

namespace A223096.P7034777538453457429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277996 (n + 1) - A341508 (A036726 n).toNat

end

end A223096.P7034777538453457429

/-! ## A223096.P12669785957589688988

`A277996(n+1)-A257991(A347591(n))`
-/

namespace A223096.P12669785957589688988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277996 (n + 1) - A257991 (A347591 n).toNat

end

end A223096.P12669785957589688988

/-! ## A223096.P2325786023757014392

`xor(A071322(A287022(n)), A277996(n+1))`
-/

namespace A223096.P2325786023757014392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071322 (A287022 n).toNat) (A277996 (n + 1))

end

end A223096.P2325786023757014392

/-! ## A223096.P1353270918599994472

`xor(A025429(A266173(n+1)), A277996(n+1))`
-/

namespace A223096.P1353270918599994472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025429 (A266173 (n + 1)).toNat) (A277996 (n + 1))

end

end A223096.P1353270918599994472

/-!
# A223097: Number of n X n 0..2 arrays with exactly floor(n X n/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223097, there is no canonical definition to state claims against.
-/

/-! ## A223097.P12491718726295673693

`A223104(∑[4*n]+1)`
-/

namespace A223097.P12491718726295673693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223097.P12491718726295673693

/-!
# A223098: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223098, there is no canonical definition to state claims against.
-/

/-! ## A223098.P6024892334108898151

`A222884(2*(n+1))`
-/

namespace A223098.P6024892334108898151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222884 (2 * (n + 1))

end

end A223098.P6024892334108898151

/-! ## A223098.P16141617321823881717

`record[lcm(n%2, A222884(n+1))]`
-/

namespace A223098.P16141617321823881717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 : ℕ) : ℤ) (A222884 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223098.P16141617321823881717

/-! ## A223098.P1041130894315106132

`record[A222884(A114112(n+2))]`
-/

namespace A223098.P1041130894315106132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222884 (A114112 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223098.P1041130894315106132

/-! ## A223098.P17034170420928455369

`record[A222884(A106617(n)+3)]`
-/

namespace A223098.P17034170420928455369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222884 (A106617 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223098.P17034170420928455369

/-! ## A223098.P2914859171717074432

`record[A222884(2*A134478(n))]`
-/

namespace A223098.P2914859171717074432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222884 (2 * A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223098.P2914859171717074432

/-! ## A223098.P18393555863464544342

`record[A222884(A196020(n+1)+1)]`
-/

namespace A223098.P18393555863464544342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222884 (A196020 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223098.P18393555863464544342

/-! ## A223098.P8995868667434868778

`∑[A045623(n)]*A235349(n+2)`
-/

namespace A223098.P8995868667434868778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A235349 (n + 2)

end

end A223098.P8995868667434868778

/-! ## A223098.P11275346803247119679

`record[A222884(n+3)/A040005(n)]`
-/

namespace A223098.P11275346803247119679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222884 (n + 3) : ℚ) / (A040005 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223098.P11275346803247119679

/-! ## A223098.P7607714071296309713

`A222884(A103517(n))%A222901(n+1)`
-/

namespace A223098.P7607714071296309713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222884 (A103517 n).toNat) (A222901 (n + 1))

end

end A223098.P7607714071296309713

/-!
# A223099: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements equal to at least one horizontal or antidiagonal neighbor, with new values introduced in row major 0..2 order.

The programs for A223099, there is no canonical definition to state claims against.
-/

/-! ## A223099.P18081933945878845159

`A223104(∑[n+3]+1)`
-/

namespace A223099.P18081933945878845159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223099.P18081933945878845159

/-! ## A223099.P3662812443397121127

`record[char[A141214(n)]*A223104(n+1)]`
-/

namespace A223099.P3662812443397121127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A223104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223099.P3662812443397121127

/-! ## A223099.P554740181047029161

`A223104(A101881(2*n+2))+A000007(n+2)`
-/

namespace A223099.P554740181047029161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223104 (A101881 (2 * n + 2)).toNat + A000007 (n + 2)

end

end A223099.P554740181047029161

