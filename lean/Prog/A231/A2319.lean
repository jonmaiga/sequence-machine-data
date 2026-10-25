import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231900: Omit the 1s from first differences of A084663.

The programs for A231900, there is no canonical definition to state claims against.
-/

/-! ## A231900.P131341883637932182

`p?[gcd(n+2, A084663(n+1))]`
-/

namespace A231900.P131341883637932182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A084663 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A231900.P131341883637932182

/-! ## A231900.P2299060585287395411

`p?[A084663(n+2)-A084663(n+1)]`
-/

namespace A231900.P2299060585287395411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084663 (n + 2) - A084663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231900.P2299060585287395411

/-! ## A231900.P6097425140338036949

`p?[A134744(n+1)]`
-/

namespace A231900.P6097425140338036949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231900.P6097425140338036949

/-! ## A231900.P17774279290515372976

`A134744(lt[1, A134744(n+1)]+1)`
-/

namespace A231900.P17774279290515372976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A231900.P17774279290515372976

/-! ## A231900.P11540750943772571312

`p?[A134744(A028310(n))-A000007(n)]`
-/

namespace A231900.P11540750943772571312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231900.P11540750943772571312

/-! ## A231900.P6392706047365273625

`p?[A134744(A028310(n))-A000038(n)]`
-/

namespace A231900.P6392706047365273625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134744 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231900.P6392706047365273625

/-! ## A231900.P850802628110007942

`p?[A134744(A028310(n))%A004009(n)]`
-/

namespace A231900.P850802628110007942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134744 (A028310 n).toNat) (A004009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231900.P850802628110007942

/-!
# A231901: Least k > n such that k!/n! + 1 is a prime, or 0 if no such k exists.

The programs for A231901, there is no canonical definition to state claims against.
-/

/-! ## A231901.P14747284662233816209

`A087565(n+1)+1+n`
-/

namespace A231901.P14747284662233816209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087565 (n + 1) + 1 + (n : ℤ)

end

end A231901.P14747284662233816209

/-! ## A231901.P461672002757087005

`A172133(1+n)+n`
-/

namespace A231901.P461672002757087005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172133 (1 + n) + (n : ℤ)

end

end A231901.P461672002757087005

/-! ## A231901.P6979635923179686617

`A087565(A077168(n))+n+1`
-/

namespace A231901.P6979635923179686617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087565 (A077168 n).toNat + (n + 1 : ℤ)

end

end A231901.P6979635923179686617

/-!
# A231904: Number of nX3 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231904, there is no canonical definition to state claims against.
-/

/-! ## A231904.P12189737658753659721

`A231908(∑[n+3]+1)`
-/

namespace A231904.P12189737658753659721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231904.P12189737658753659721

/-! ## A231904.P10249135604788443768

`A231908(A034856(n+2))+A199573(2*n+3)`
-/

namespace A231904.P10249135604788443768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A034856 (n + 2)).toNat + A199573 (2 * n + 3)

end

end A231904.P10249135604788443768

/-!
# A231905: Number of nX4 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231905, there is no canonical definition to state claims against.
-/

/-! ## A231905.P11673004079096835674

`A231908(A141214(n+1))`
-/

namespace A231905.P11673004079096835674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A141214 (n + 1)).toNat

end

end A231905.P11673004079096835674

/-! ## A231905.P1588785958892105421

`A231908(A055998(n+2))`
-/

namespace A231905.P1588785958892105421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A055998 (n + 2)).toNat

end

end A231905.P1588785958892105421

/-! ## A231905.P8680614930508423077

`A231908(A155212(n)+5)`
-/

namespace A231905.P8680614930508423077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A155212 n + 5).toNat

end

end A231905.P8680614930508423077

/-! ## A231905.P12864336991127635305

`A231908(A056000(n)+7)`
-/

namespace A231905.P12864336991127635305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A056000 n + 7).toNat

end

end A231905.P12864336991127635305

/-! ## A231905.P11243930833176890241

`A231908(eq[3, A193592(n)])`
-/

namespace A231905.P11243930833176890241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231905.P11243930833176890241

/-!
# A231906: Number of nX5 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231906, there is no canonical definition to state claims against.
-/

/-! ## A231906.P906864771239351764

`A231908(Δ[A264443(n)])`
-/

namespace A231906.P906864771239351764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (f1 (n + 1) - f1 n).toNat

end

end A231906.P906864771239351764

/-! ## A231906.P12807118837362266987

`A231908(eq[2, A092921(n)])`
-/

namespace A231906.P12807118837362266987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231906.P12807118837362266987

/-! ## A231906.P2975368422199281521

`A231908(eq[4, A193592(n)])`
-/

namespace A231906.P2975368422199281521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231906.P2975368422199281521

/-! ## A231906.P6227430185771254831

`A231908(eq[4, A025581(n)]+1)`
-/

namespace A231906.P6227430185771254831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231906.P6227430185771254831

/-! ## A231906.P14927490295298710938

`A231908(eq[4, A168396(n+1)])`
-/

namespace A231906.P14927490295298710938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231906.P14927490295298710938

/-!
# A231907: Number of nX6 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231907, there is no canonical definition to state claims against.
-/

/-! ## A231907.P15371071197660498335

`A231908(eq[5, A193592(n)])`
-/

namespace A231907.P15371071197660498335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231907.P15371071197660498335

/-! ## A231907.P15399993326867507735

`A231908(Δ[Δ[A006504(n+1)]])`
-/

namespace A231907.P15399993326867507735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (f1 (n + 1) - f1 n).toNat

end

end A231907.P15399993326867507735

/-! ## A231907.P17048949777689517811

`A231908(Δ[A264443(n+1)]-1)`
-/

namespace A231907.P17048949777689517811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (f1 (n + 1) - f1 n - 1).toNat

end

end A231907.P17048949777689517811

/-!
# A231909: Number of 2 X n 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231909, there is no canonical definition to state claims against.
-/

/-! ## A231909.P18049986996688506572

`A231908(∑[n+1]+2)`
-/

namespace A231909.P18049986996688506572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231909.P18049986996688506572

/-! ## A231909.P7463698851168771778

`or(A091536(n), A231908(A000096(n)+3))`
-/

namespace A231909.P7463698851168771778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091536 n) (A231908 (A000096 n + 3).toNat)

end

end A231909.P7463698851168771778

/-! ## A231909.P2807850995614584090

`or(A184946(n)^n, A231908(A000096(n)+3))`
-/

namespace A231909.P2807850995614584090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184946 n ^ n) (A231908 (A000096 n + 3).toNat)

end

end A231909.P2807850995614584090

/-! ## A231909.P890283884491468204

`A008683(or(13, n))²*A231908(A000096(n)+3)`
-/

namespace A231909.P890283884491468204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lor 13 n) ^ 2 * A231908 (A000096 n + 3).toNat

end

end A231909.P890283884491468204

/-! ## A231909.P6683135221023679755

`A231908(A000096(n)+3)+A084904(A332403(n+1))`
-/

namespace A231909.P6683135221023679755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A000096 n + 3).toNat + A084904 (A332403 (n + 1)).toNat

end

end A231909.P6683135221023679755

/-!
# A231910: Number of 3Xn 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231910, there is no canonical definition to state claims against.
-/

/-! ## A231910.P15107850882277202721

`A231908(∑[n+2]+4)`
-/

namespace A231910.P15107850882277202721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231910.P15107850882277202721

/-! ## A231910.P17951306287477044877

`A231908(A167614(n+1))+A054908(n)`
-/

namespace A231910.P17951306287477044877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A167614 (n + 1)).toNat + A054908 n

end

end A231910.P17951306287477044877

/-! ## A231910.P876287564125823080

`or(A000007(n), A231908(A167614(n+1)))`
-/

namespace A231910.P876287564125823080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231908 (A167614 (n + 1)).toNat)

end

end A231910.P876287564125823080

/-! ## A231910.P15940619401973063965

`or(A017907(n), A231908(A167614(n+1)))`
-/

namespace A231910.P15940619401973063965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017907 n) (A231908 (A167614 (n + 1)).toNat)

end

end A231910.P15940619401973063965

/-! ## A231910.P14985257679960152955

`or(A151933(n), A231908(A167614(n+1)))`
-/

namespace A231910.P14985257679960152955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A231908 (A167614 (n + 1)).toNat)

end

end A231910.P14985257679960152955

/-!
# A231911: Number of 4 X n 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231911, there is no canonical definition to state claims against.
-/

/-! ## A231911.P16301752967013989417

`A231908(∑[n+3]+7)`
-/

namespace A231911.P16301752967013989417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231911.P16301752967013989417

/-!
# A231912: Number of 5Xn 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231912, there is no canonical definition to state claims against.
-/

/-! ## A231912.P3176451166806381454

`A231908(A167499(n+3))`
-/

namespace A231912.P3176451166806381454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A167499 (n + 3)).toNat

end

end A231912.P3176451166806381454

/-! ## A231912.P1246544653093841962

`A231908(A155212(n)+13)`
-/

namespace A231912.P1246544653093841962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A155212 n + 13).toNat

end

end A231912.P1246544653093841962

/-! ## A231912.P12230012073880332583

`A231908(A056000(n)+15)`
-/

namespace A231912.P12230012073880332583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A056000 n + 15).toNat

end

end A231912.P12230012073880332583

/-! ## A231912.P5780870320771884083

`A231908(eq[6, A131818(n+1)])`
-/

namespace A231912.P5780870320771884083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231912.P5780870320771884083

/-! ## A231912.P3127248491666571344

`A231908(eq[5, A025581(n)]-2*n)`
-/

namespace A231912.P3127248491666571344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A231912.P3127248491666571344

/-!
# A231913: Number of 6Xn 0..2 arrays with no element having a strict majority of its horizontal, diagonal and antidiagonal neighbors equal to itself plus one mod 3, with upper left element zero (rock paper and scissors drawn positions).

The programs for A231913, there is no canonical definition to state claims against.
-/

/-! ## A231913.P18154456753890105639

`A231908(Δ[A264443(n)]+10)`
-/

namespace A231913.P18154456753890105639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (f1 (n + 1) - f1 n + 10).toNat

end

end A231913.P18154456753890105639

/-! ## A231913.P8612739353730532286

`A231908(A000096(n+5)-(n-1))`
-/

namespace A231913.P8612739353730532286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231908 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A231913.P8612739353730532286

/-!
# A231916: Primes p such that 16*p^2 + 10*p + 1 divides 2^p - 1.

The programs for A231916, there is no canonical definition to state claims against.
-/

/-! ## A231916.P1257435419515901936

`∩[A002515(n+1), A122095(n+1)]`
-/

namespace A231916.P1257435419515901936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231916.P1257435419515901936

/-! ## A231916.P401987441919327517

`∩[A122095(n+1), A158034(n+1)]`
-/

namespace A231916.P401987441919327517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231916.P401987441919327517

/-! ## A231916.P16975695175884471067

`∩[A122095(n+1), A163780(n+1)]`
-/

namespace A231916.P16975695175884471067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231916.P16975695175884471067

/-! ## A231916.P3759827237046540056

`∩[A122095(n+1), A374914(n+1)]`
-/

namespace A231916.P3759827237046540056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231916.P3759827237046540056

/-! ## A231916.P15634776362981340808

`∩[floor(A101789(n+1)/2), A122095(n+1)]`
-/

namespace A231916.P15634776362981340808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101789 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231916.P15634776362981340808

/-!
# A231919: a(n) = 3^n + (4^n - 3^n) * (d(n) - 3), where d(n) = A000005(n).

The programs for A231919, the canonical program `A231919.P14365543587404789061` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231919 has offset 1).

The definition of A231919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231919.P14365543587404789061

`A000244(n+1)+A005061(n+1)*(A000005(n+1)-3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A231919

/-- `A000244(n+1)+A005061(n+1)*(A000005(n+1)-3)` -/
def P14365543587404789061.Spec : Prop :=
  ∀ n, P14365543587404789061.a n = A231919 (n + 1)

theorem P14365543587404789061.correct : P14365543587404789061.Spec := by
  intro n
  simp only [A231919, Nat.add_sub_cancel]

end A231919

/-!
# A231920: Working in base 3: a(0)=0, thereafter a(n+1) is the smallest number not already in the sequence such that the bits of a(n) and a(n+1) together can be rearranged to form a palindrome.

The programs for A231920, there is no canonical definition to state claims against.
-/

/-! ## A231920.P5160635505492288291

`A007089(A231921(n))`
-/

namespace A231920.P5160635505492288291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A231921 n).toNat

end

end A231920.P5160635505492288291

/-! ## A231920.P7177500142032985058

`A231924(or(n, A324090(n+1)))`
-/

namespace A231920.P7177500142032985058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231924 (Int.lor (n : ℤ) (A324090 (n + 1))).toNat

end

end A231920.P7177500142032985058

/-! ## A231920.P771436344469225125

`A231926(lt[A236456(n+1), A160357(2*n+3)])`
-/

namespace A231920.P771436344469225125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231926 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231920.P771436344469225125

/-!
# A231921: Terms of A231920 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231921, there is no canonical definition to state claims against.
-/

/-! ## A231921.P14306407311172278017

`A028898(A231920(n))`
-/

namespace A231921.P14306407311172278017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A231920 n).toNat

end

end A231921.P14306407311172278017

/-!
# A231922: Working in base 4: a(0)=0, thereafter a(n+1) is the smallest number not already in the sequence such that the bits of a(n) and a(n+1) together can be rearranged to form a palindrome.

The programs for A231922, there is no canonical definition to state claims against.
-/

/-! ## A231922.P12961459716763891779

`A007090(A231923(n))`
-/

namespace A231922.P12961459716763891779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A231923 n).toNat

end

end A231922.P12961459716763891779

/-!
# A231923: Terms of A231922 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231923, there is no canonical definition to state claims against.
-/

/-! ## A231923.P13703757851028590162

`A028899(A231922(n))`
-/

namespace A231923.P13703757851028590162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A231922 n).toNat

end

end A231923.P13703757851028590162

/-! ## A231923.P928400563887485852

`A028899(A228407(n)%A124165(n+1))`
-/

namespace A231923.P928400563887485852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (Int.tmod (A228407 n) (A124165 (n + 1))).toNat

end

end A231923.P928400563887485852

/-! ## A231923.P16658249923339924951

`A028899(A231924(n)%A124165(n+1))`
-/

namespace A231923.P16658249923339924951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (Int.tmod (A231924 n) (A124165 (n + 1))).toNat

end

end A231923.P16658249923339924951

/-! ## A231923.P16558042915260642181

`A028899(A231926(n)%A124165(n+1))`
-/

namespace A231923.P16558042915260642181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (Int.tmod (A231926 n) (A124165 (n + 1))).toNat

end

end A231923.P16558042915260642181

/-! ## A231923.P9848579310155632273

`A028899(A231928(n)%A124165(n+1))`
-/

namespace A231923.P9848579310155632273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (Int.tmod (A231928 n) (A124165 (n + 1))).toNat

end

end A231923.P9848579310155632273

/-!
# A231924: Working in base 5: a(0)=0, thereafter a(n+1) is the smallest number not already in the sequence such that the bits of a(n) and a(n+1) together can be rearranged to form a palindrome.

The programs for A231924, there is no canonical definition to state claims against.
-/

/-! ## A231924.P3611512234547296

`A007091(A231925(n))`
-/

namespace A231924.P3611512234547296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A231925 n).toNat

end

end A231924.P3611512234547296

/-!
# A231925: Terms of A231924 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231925, there is no canonical definition to state claims against.
-/

/-! ## A231925.P2697666356583237133

`A028900(A231924(n))`
-/

namespace A231925.P2697666356583237133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A231924 n).toNat

end

end A231925.P2697666356583237133

/-! ## A231925.P11373466499600212890

`A028900((A151660(n)+1)*A228407(n))`
-/

namespace A231925.P11373466499600212890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 ((A151660 n + 1) * A228407 n).toNat

end

end A231925.P11373466499600212890

/-! ## A231925.P6253652726972664675

`A000041(A151660(n))*A028900(A228407(n))`
-/

namespace A231925.P6253652726972664675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151660 n).toNat * A028900 (A228407 n).toNat

end

end A231925.P6253652726972664675

/-! ## A231925.P3772659985014618896

`A028900(A228407(n))/A000041(A151660(n)²)`
-/

namespace A231925.P3772659985014618896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028900 (A228407 n).toNat : ℚ) / (A000041 (A151660 n ^ 2).toNat : ℚ)

end

end A231925.P3772659985014618896

/-! ## A231925.P1451034418971389435

`A028900(A228407(n)+A151660(n))-A151660(n)`
-/

namespace A231925.P1451034418971389435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A228407 n + A151660 n).toNat - A151660 n

end

end A231925.P1451034418971389435

/-!
# A231926: Working in base 6: a(0)=0, thereafter a(n+1) is the smallest number not already in the sequence such that the bits of a(n) and a(n+1) together can be rearranged to form a palindrome.

The programs for A231926, there is no canonical definition to state claims against.
-/

/-! ## A231926.P10109856209533289540

`A007092(A231927(n))`
-/

namespace A231926.P10109856209533289540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A231927 n).toNat

end

end A231926.P10109856209533289540

/-!
# A231927: Terms of A231926 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231927, there is no canonical definition to state claims against.
-/

/-! ## A231927.P13673102171421644170

`A028901(A231926(n))`
-/

namespace A231927.P13673102171421644170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A231926 n).toNat

end

end A231927.P13673102171421644170

/-! ## A231927.P415973314109356580

`A028901(A228407(n)%A279509(n))`
-/

namespace A231927.P415973314109356580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (Int.tmod (A228407 n) (A279509 n)).toNat

end

end A231927.P415973314109356580

/-! ## A231927.P3286251730686826594

`A028901(A231928(n)%A279509(n))`
-/

namespace A231927.P3286251730686826594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (Int.tmod (A231928 n) (A279509 n)).toNat

end

end A231927.P3286251730686826594

/-! ## A231927.P18445855829118744246

`A303789(A231929(n)%A279509(n))`
-/

namespace A231927.P18445855829118744246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (Int.tmod (A231929 n) (A279509 n)).toNat

end

end A231927.P18445855829118744246

/-! ## A231927.P494062036818900352

`A303789(A231929(n))+A008683(A017378(n))`
-/

namespace A231927.P494062036818900352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A231929 n).toNat + A008683 (A017378 n).toNat

end

end A231927.P494062036818900352

/-!
# A231928: Working in base 7: a(0)=0, thereafter a(n+1) is the smallest number not already in the sequence such that the bits of a(n) and a(n+1) together can be rearranged to form a palindrome.

The programs for A231928, there is no canonical definition to state claims against.
-/

/-! ## A231928.P7229844795042950090

`A228407(n)+C(n, 64)`
-/

namespace A231928.P7229844795042950090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 n + (Nat.choose n 64 : ℤ)

end

end A231928.P7229844795042950090

/-! ## A231928.P1555677289184507964

`A228407(n*ceil(n/63))`
-/

namespace A231928.P1555677289184507964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228407 ((n : ℤ) * ⌈(n : ℚ) / 63⌉).toNat

end

end A231928.P1555677289184507964

/-! ## A231928.P100510504581603500

`A004183(A228407(n))`
-/

namespace A231928.P100510504581603500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A228407 n).toNat

end

end A231928.P100510504581603500

/-! ## A231928.P12324273829596257256

`A007093(A231929(n))`
-/

namespace A231928.P12324273829596257256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A231929 n).toNat

end

end A231928.P12324273829596257256

/-! ## A231928.P17754186246117510059

`A178334(n)*A228407(n)`
-/

namespace A231928.P17754186246117510059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A228407 n

end

end A231928.P17754186246117510059

/-! ## A231928.P1646462453865358005

`A007094(A231931(n)+1)-1`
-/

namespace A231928.P1646462453865358005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A231931 n + 1).toNat - 1

end

end A231928.P1646462453865358005

/-! ## A231928.P12490053979708256779

`A052421(A231933(n)+2)-1`
-/

namespace A231928.P12490053979708256779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (A231933 n + 2).toNat - 1

end

end A231928.P12490053979708256779

/-!
# A231929: Terms of A231928 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231929, there is no canonical definition to state claims against.
-/

/-! ## A231929.P12977970391015670013

`A303789(A231931(n)%A123107(n+1))`
-/

namespace A231929.P12977970391015670013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (Int.tmod (A231931 n) (A123107 (n + 1))).toNat

end

end A231929.P12977970391015670013

/-! ## A231929.P15796181406177492353

`A014963(A108665(n+1))*A303789(A231931(n))`
-/

namespace A231929.P15796181406177492353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A108665 (n + 1)).toNat * A303789 (A231931 n).toNat

end

end A231929.P15796181406177492353

/-! ## A231929.P12899805766933575188

`A303789((A151660(n)+1)*A231931(n))`
-/

namespace A231929.P12899805766933575188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 ((A151660 n + 1) * A231931 n).toNat

end

end A231929.P12899805766933575188

/-! ## A231929.P16589085159367684844

`A151660(A151660(n))*A303789(A231931(n))`
-/

namespace A231929.P16589085159367684844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 (A151660 n).toNat * A303789 (A231931 n).toNat

end

end A231929.P16589085159367684844

/-! ## A231929.P9960580312254375465

`A303789(A231931(n)+A151660(n))-A151660(n)`
-/

namespace A231929.P9960580312254375465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A231931 n + A151660 n).toNat - A151660 n

end

end A231929.P9960580312254375465

/-!
# A231931: Terms of A231930 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231931, there is no canonical definition to state claims against.
-/

/-! ## A231931.P8992528523954463408

`A028903(A228407(n))`
-/

namespace A231931.P8992528523954463408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A228407 n).toNat

end

end A231931.P8992528523954463408

/-! ## A231931.P7355888304851483670

`A028903(A231928(n))`
-/

namespace A231931.P7355888304851483670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A231928 n).toNat

end

end A231931.P7355888304851483670

/-! ## A231931.P6754461877474909219

`A028903(A231926(n)%A279509(n))`
-/

namespace A231931.P6754461877474909219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (Int.tmod (A231926 n) (A279509 n)).toNat

end

end A231931.P6754461877474909219

/-! ## A231931.P4863767909989502306

`A028903(A231926(n)^A178334(3*n+2))`
-/

namespace A231931.P4863767909989502306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.roundAway ((A231926 n : ℚ) ^ (A178334 (3 * n + 2) : ℤ))).toNat

end

end A231931.P4863767909989502306

/-!
# A231933: Terms of A231932 written in base 10: the binary expansions of a(n) and a(n+1) taken together can be rearranged to form a palindrome.

The programs for A231933, there is no canonical definition to state claims against.
-/

/-! ## A231933.P4952356148347956205

`A028904(A228407(n))`
-/

namespace A231933.P4952356148347956205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A228407 n).toNat

end

end A231933.P4952356148347956205

/-! ## A231933.P2531905063445390194

`A037477(A231931(n))`
-/

namespace A231933.P2531905063445390194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A231931 n).toNat

end

end A231933.P2531905063445390194

/-! ## A231933.P14695357767984560887

`A028904(A231928(n))`
-/

namespace A231933.P14695357767984560887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A231928 n).toNat

end

end A231933.P14695357767984560887

/-! ## A231933.P16053826016716637439

`A028904(A231926(n)%A279509(n))`
-/

namespace A231933.P16053826016716637439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (Int.tmod (A231926 n) (A279509 n)).toNat

end

end A231933.P16053826016716637439

/-!
# A231934: G.f. A(x) satisfies: A'(x) = A(B(x)) where B'(x) = A(x) with B(0)=0 and A(0)=1.

The programs for A231934, there is no canonical definition to state claims against.
-/

/-! ## A231934.P9433717189778790997

`A008679(xor(5, n!*∑[1/n!]))`
-/

namespace A231934.P9433717189778790997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.xor 5 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A231934.P9433717189778790997

/-! ## A231934.P7319195734150043726

`A342696(or(12, n!*∑[1/n!]))`
-/

namespace A231934.P7319195734150043726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 (Int.lor 12 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A231934.P7319195734150043726

/-! ## A231934.P4979803491801045890

`A070317(A196195(n))`
-/

namespace A231934.P4979803491801045890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070317 (A196195 n).toNat

end

end A231934.P4979803491801045890

/-!
# A231935: Greatest prime Q < 2*n such that 2*n-Q=P prime < Q starting at n=4.

The programs for A231935, there is no canonical definition to state claims against.
-/

/-! ## A231935.P17646364919070789214

`A020482(n+4)`
-/

namespace A231935.P17646364919070789214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 4)

end

end A231935.P17646364919070789214

/-! ## A231935.P14217702438230546697

`A159482(n+4)`
-/

namespace A231935.P14217702438230546697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (n + 4)

end

end A231935.P14217702438230546697

/-! ## A231935.P3282149054233984594

`A060264(n+3-A255274(n+2))`
-/

namespace A231935.P3282149054233984594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 ((n + 3 : ℤ) - A255274 (n + 2)).toNat

end

end A231935.P3282149054233984594

/-! ## A231935.P18177757528044887765

`A078496(n+4)+A078587(n+4)-A002373(n+4)`
-/

namespace A231935.P18177757528044887765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (n + 4) + (A078587 (n + 4) - A002373 (n + 4))

end

end A231935.P18177757528044887765

/-! ## A231935.P12109008205406289679

`Δ[A380546(n+3)]`
-/

namespace A231935.P12109008205406289679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380546 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231935.P12109008205406289679

/-! ## A231935.P12166092306304348109

`A234345(n+4)+A112824(n+4)`
-/

namespace A231935.P12166092306304348109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 4) + A112824 (n + 4)

end

end A231935.P12166092306304348109

/-! ## A231935.P7075138323129914645

`A380546(n+4)-A380546(n+3)`
-/

namespace A231935.P7075138323129914645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380546 (n + 4) - A380546 (n + 3)

end

end A231935.P7075138323129914645

/-! ## A231935.P15800186736855333459

`A073046(n+4)/A002373(n+4)`
-/

namespace A231935.P15800186736855333459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 4) : ℚ) / (A002373 (n + 4) : ℚ)

end

end A231935.P15800186736855333459

/-! ## A231935.P8837891524517297831

`A073046(n+4)/A020481(n+4)`
-/

namespace A231935.P8837891524517297831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073046 (n + 4) : ℚ) / (A020481 (n + 4) : ℚ)

end

end A231935.P8837891524517297831

/-! ## A231935.P4922857829713070613

`A303603(n+4)+A002373(n+4)`
-/

namespace A231935.P4922857829713070613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (n + 4) + A002373 (n + 4)

end

end A231935.P4922857829713070613

/-! ## A231935.P10028164402605179625

`A303603(n+4)+A020481(n+4)`
-/

namespace A231935.P10028164402605179625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (n + 4) + A020481 (n + 4)

end

end A231935.P10028164402605179625

/-! ## A231935.P1611729198242861425

`A210957(2*n+7)`
-/

namespace A231935.P1611729198242861425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (2 * n + 7)

end

end A231935.P1611729198242861425

/-!
# A231936: Number of nX3 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231936, there is no canonical definition to state claims against.
-/

/-! ## A231936.P16865249666393675782

`A231940(∑[n+3]+1)`
-/

namespace A231936.P16865249666393675782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231936.P16865249666393675782

/-!
# A231937: Number of n X 4 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231937, there is no canonical definition to state claims against.
-/

/-! ## A231937.P4779307109797492707

`A231940(A141214(n+1))`
-/

namespace A231937.P4779307109797492707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A141214 (n + 1)).toNat

end

end A231937.P4779307109797492707

/-! ## A231937.P8721336894719874398

`A231940(A155212(n)+5)`
-/

namespace A231937.P8721336894719874398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A155212 n + 5).toNat

end

end A231937.P8721336894719874398

/-! ## A231937.P10682238139376761532

`A231940(A056000(n)+7)`
-/

namespace A231937.P10682238139376761532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A056000 n + 7).toNat

end

end A231937.P10682238139376761532

/-! ## A231937.P1724366906380325620

`A231940(eq[3, A193592(n)])`
-/

namespace A231937.P1724366906380325620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231937.P1724366906380325620

/-! ## A231937.P5174288720924267211

`A231940(eq[4, A140996(n)])`
-/

namespace A231937.P5174288720924267211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231937.P5174288720924267211

/-!
# A231938: Number of n X 5 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231938, there is no canonical definition to state claims against.
-/

/-! ## A231938.P675956283386784489

`A231940(∑[n+5]+6)`
-/

namespace A231938.P675956283386784489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A231938.P675956283386784489

/-!
# A231939: Number of nX6 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231939, there is no canonical definition to state claims against.
-/

/-! ## A231939.P1810844949400990401

`A231940(A052905(n+3))`
-/

namespace A231939.P1810844949400990401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A052905 (n + 3)).toNat

end

end A231939.P1810844949400990401

/-! ## A231939.P10014615563189315066

`A231940(eq[3, A274661(n)])`
-/

namespace A231939.P10014615563189315066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231939.P10014615563189315066

/-! ## A231939.P14077563982689034576

`A231940(eq[5, A193592(n)])`
-/

namespace A231939.P14077563982689034576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231939.P14077563982689034576

/-!
# A231941: Number of 2 X n 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231941, there is no canonical definition to state claims against.
-/

/-! ## A231941.P9006082823805277006

`A231940(∑[n+1]+2)`
-/

namespace A231941.P9006082823805277006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231941.P9006082823805277006

/-! ## A231941.P987740039974506656

`record[A231940(n+3)/A048882(n)]`
-/

namespace A231941.P987740039974506656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231940 (n + 3) : ℚ) / (A048882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231941.P987740039974506656

/-! ## A231941.P788649461004171768

`record[A231940(n+3)/A106342(n)]`
-/

namespace A231941.P788649461004171768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231940 (n + 3) : ℚ) / (A106342 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231941.P788649461004171768

/-! ## A231941.P3961449198731581982

`record[A231940(n+4)/A022187(n+2)]`
-/

namespace A231941.P3961449198731581982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231940 (n + 4) : ℚ) / (A022187 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231941.P3961449198731581982

/-! ## A231941.P13524150932823748500

`record[A231940(n+3)-A262819(n+1)]`
-/

namespace A231941.P13524150932823748500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (n + 3) - A262819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231941.P13524150932823748500

/-!
# A231942: Number of 3Xn 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231942, there is no canonical definition to state claims against.
-/

/-! ## A231942.P1525951508846429795

`A231940(∑[n+2]+4)`
-/

namespace A231942.P1525951508846429795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231942.P1525951508846429795

/-! ## A231942.P7333169696892430089

`A231940(A167614(n+1))+A054908(n)`
-/

namespace A231942.P7333169696892430089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A167614 (n + 1)).toNat + A054908 n

end

end A231942.P7333169696892430089

/-! ## A231942.P14702537701935213030

`A231940(A167614(n+1))+A107846(n)`
-/

namespace A231942.P14702537701935213030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A167614 (n + 1)).toNat + A107846 n

end

end A231942.P14702537701935213030

/-! ## A231942.P11948049070362034318

`A326458(n)+A231940(A167614(n+1))`
-/

namespace A231942.P11948049070362034318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A231940 (A167614 (n + 1)).toNat

end

end A231942.P11948049070362034318

/-! ## A231942.P17889402247168020812

`A036370(n)*A231940(A167614(n+1))`
-/

namespace A231942.P17889402247168020812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 n * A231940 (A167614 (n + 1)).toNat

end

end A231942.P17889402247168020812

/-!
# A231943: Number of 4Xn 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231943, there is no canonical definition to state claims against.
-/

/-! ## A231943.P13288792182100092360

`A231940(A141214(n)+7)`
-/

namespace A231943.P13288792182100092360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A141214 n + 7).toNat

end

end A231943.P13288792182100092360

/-! ## A231943.P11248240875847552929

`A231940(A052905(n)+9)`
-/

namespace A231943.P11248240875847552929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A052905 n + 9).toNat

end

end A231943.P11248240875847552929

/-! ## A231943.P8111225067663089008

`A231940(A055999(n)+10)`
-/

namespace A231943.P8111225067663089008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A055999 n + 10).toNat

end

end A231943.P8111225067663089008

/-! ## A231943.P2651066696094367574

`A231940(eq[5, A066657(n)])`
-/

namespace A231943.P2651066696094367574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231943.P2651066696094367574

/-! ## A231943.P9995866619037137297

`A231940(A167614(n+2)+1)`
-/

namespace A231943.P9995866619037137297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A167614 (n + 2) + 1).toNat

end

end A231943.P9995866619037137297

/-!
# A231944: Number of 5 X n 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231944, there is no canonical definition to state claims against.
-/

/-! ## A231944.P16851925176345769063

`A231940(A167499(n+3))`
-/

namespace A231944.P16851925176345769063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A167499 (n + 3)).toNat

end

end A231944.P16851925176345769063

/-! ## A231944.P15554991209174358777

`A231940(A155212(n)+13)`
-/

namespace A231944.P15554991209174358777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A155212 n + 13).toNat

end

end A231944.P15554991209174358777

/-! ## A231944.P15411580893388668706

`A231940(eq[7, A066657(n)])`
-/

namespace A231944.P15411580893388668706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231944.P15411580893388668706

/-! ## A231944.P9253875866218648236

`A231940(A000217(n+4)+5)`
-/

namespace A231944.P9253875866218648236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (A000217 (n + 4) + 5).toNat

end

end A231944.P9253875866218648236

/-! ## A231944.P15484799090991646421

`A231940(eq[6, A131818(n+1)])`
-/

namespace A231944.P15484799090991646421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231944.P15484799090991646421

/-!
# A231945: Number of 6Xn 0..3 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231945, there is no canonical definition to state claims against.
-/

/-! ## A231945.P1717395697205618276

`A231940(eq[7, A131818(n+1)])`
-/

namespace A231945.P1717395697205618276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231945.P1717395697205618276

/-!
# A231946: Partial sums of the third power of the arithmetic derivative function A003415.

The programs for A231946, the canonical program `A231946.P13868030303102611269` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231946 has offset 1).

The definition of A231946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231946.P12441040708193902106

`∑[∑[A258057(n)]^3]`
-/

namespace A231946.P12441040708193902106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P12441040708193902106

namespace A231946

/-- `∑[∑[A258057(n)]^3]` -/
def P12441040708193902106.Spec : Prop :=
  ∀ n, P12441040708193902106.a n = A231946 (n + 1)

end A231946

/-! ## A231946.P13868030303102611269

`∑[A003415(n+1)^3]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A231946

/-- `∑[A003415(n+1)^3]` -/
def P13868030303102611269.Spec : Prop :=
  ∀ n, P13868030303102611269.a n = A231946 (n + 1)

theorem P13868030303102611269.correct : P13868030303102611269.Spec := by
  intro n
  simp only [A231946, Nat.add_sub_cancel]

end A231946

/-! ## A231946.P7598400985994220180

`∑[(A129283(n+1)-(n+1))^3]`
-/

namespace A231946.P7598400985994220180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) - (n + 1 : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P7598400985994220180

namespace A231946

/-- `∑[(A129283(n+1)-(n+1))^3]` -/
def P7598400985994220180.Spec : Prop :=
  ∀ n, P7598400985994220180.a n = A231946 (n + 1)

theorem P7598400985994220180.correct : P7598400985994220180.Spec := by
  intro n
  simp only [A231946, Nat.add_sub_cancel, A231946.P7598400985994220180.f1, A231946.P7598400985994220180.a, A231946.P13868030303102611269.f1, A231946.P13868030303102611269.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A231946

/-! ## A231946.P243466275634341477

`∑[A319703(2*(n+1))^3]`
-/

namespace A231946.P243466275634341477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P243466275634341477

namespace A231946

/-- `∑[A319703(2*(n+1))^3]` -/
def P243466275634341477.Spec : Prop :=
  ∀ n, P243466275634341477.a n = A231946 (n + 1)

end A231946

/-! ## A231946.P13974998177593090590

`∑[A319703(2*n+2)²*A319703(2*n+2)]`
-/

namespace A231946.P13974998177593090590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * n + 2) ^ 2 * A319703 (2 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P13974998177593090590

namespace A231946

/-- `∑[A319703(2*n+2)²*A319703(2*n+2)]` -/
def P13974998177593090590.Spec : Prop :=
  ∀ n, P13974998177593090590.a n = A231946 (n + 1)

end A231946

/-! ## A231946.P18377566345916392617

`∑[A000578(A003415(n+1))]`
-/

namespace A231946.P18377566345916392617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P18377566345916392617

namespace A231946

/-- `∑[A000578(A003415(n+1))]` -/
def P18377566345916392617.Spec : Prop :=
  ∀ n, P18377566345916392617.a n = A231946 (n + 1)

end A231946

/-! ## A231946.P6959456209937158016

`∑[A000578(A319703(2*(n+1)))]`
-/

namespace A231946.P6959456209937158016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A319703 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231946.P6959456209937158016

namespace A231946

/-- `∑[A000578(A319703(2*(n+1)))]` -/
def P6959456209937158016.Spec : Prop :=
  ∀ n, P6959456209937158016.a n = A231946 (n + 1)

end A231946

/-!
# A231947: Expansion of q^(-1/3) * a(q)^2 * c(q) / 3 in powers of q where a(), c() are cubic AGM theta functions.

The programs for A231947, the canonical program `A231947.P3420748892416134547` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231947 has offset 0).

The definition of A231947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231947.P3420748892416134547

`A103440(3*n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231947

/-- `A103440(3*n+1)` -/
def P3420748892416134547.Spec : Prop :=
  ∀ n, P3420748892416134547.a n = A231947 n

theorem P3420748892416134547.correct : P3420748892416134547.Spec := by
  intro n
  simp only [A231947]

end A231947

/-! ## A231947.P11747908201208873979

`A106402(3*n+1)`
-/

namespace A231947.P11747908201208873979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106402 (3 * n + 1)

end

end A231947.P11747908201208873979

namespace A231947

/-- `A106402(3*n+1)` -/
def P11747908201208873979.Spec : Prop :=
  ∀ n, P11747908201208873979.a n = A231947 n

end A231947

/-! ## A231947.P6224559143516712244

`abs(A103440(A016777(n)))`
-/

namespace A231947.P6224559143516712244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103440 (A016777 n).toNat|

end

end A231947.P6224559143516712244

namespace A231947

/-- `abs(A103440(A016777(n)))` -/
def P6224559143516712244.Spec : Prop :=
  ∀ n, P6224559143516712244.a n = A231947 n

end A231947

/-! ## A231947.P6265835223460766692

`abs(A103440(A032766(Δ[n²])))`
-/

namespace A231947.P6265835223460766692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103440 (A032766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat|

end

end A231947.P6265835223460766692

namespace A231947

/-- `abs(A103440(A032766(Δ[n²])))` -/
def P6265835223460766692.Spec : Prop :=
  ∀ n, P6265835223460766692.a n = A231947 n

end A231947

/-! ## A231947.P4188977030598770621

`or(A000007(n), A106402(A016777(n)))`
-/

namespace A231947.P4188977030598770621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106402 (A016777 n).toNat)

end

end A231947.P4188977030598770621

namespace A231947

/-- `or(A000007(n), A106402(A016777(n)))` -/
def P4188977030598770621.Spec : Prop :=
  ∀ n, P4188977030598770621.a n = A231947 n

end A231947

/-! ## A231947.P3888832170336799397

`A181905(3*n+1)`
-/

namespace A231947.P3888832170336799397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181905 (3 * n + 1)

end

end A231947.P3888832170336799397

namespace A231947

/-- `A181905(3*n+1)` -/
def P3888832170336799397.Spec : Prop :=
  ∀ n, P3888832170336799397.a n = A231947 n

end A231947

/-! ## A231947.P10008623717370343202

`∑{d}[A181905(A016777(n)), A000010(#)]`
-/

namespace A231947.P10008623717370343202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181905 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A231947.P10008623717370343202

namespace A231947

/-- `∑{d}[A181905(A016777(n)), A000010(#)]` -/
def P10008623717370343202.Spec : Prop :=
  ∀ n, P10008623717370343202.a n = A231947 n

end A231947

/-! ## A231947.P18281266436380048300

`A106402(A016777(n))+A000007(A106402(n+1))`
-/

namespace A231947.P18281266436380048300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106402 (A016777 n).toNat + A000007 (A106402 (n + 1)).toNat

end

end A231947.P18281266436380048300

namespace A231947

/-- `A106402(A016777(n))+A000007(A106402(n+1))` -/
def P18281266436380048300.Spec : Prop :=
  ∀ n, P18281266436380048300.a n = A231947 n

end A231947

/-!
# A231948: Expansion of a(q)^2 * b(q) in powers of q where a(), b() are cubic AGM theta functions.

The programs for A231948, there is no canonical definition to state claims against.
-/

/-! ## A231948.P10820968219460793316

`A231962(n)/A131713(n)`
-/

namespace A231948.P10820968219460793316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (A131713 n : ℚ)

end

end A231948.P10820968219460793316

/-! ## A231948.P17453343537579910851

`A231962(n)/Δ[A004482(n)]`
-/

namespace A231948.P17453343537579910851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A231948.P17453343537579910851

/-! ## A231948.P14244772440808922582

`A231962(n)/Δ[A117966(n)]`
-/

namespace A231948.P14244772440808922582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A231948.P14244772440808922582

/-! ## A231948.P5333750100761301945

`A231962(n)/A061347(n+2)`
-/

namespace A231948.P5333750100761301945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (A061347 (n + 2) : ℚ)

end

end A231948.P5333750100761301945

/-! ## A231948.P13816915762334835980

`A231962(n)/A117188(2*n)`
-/

namespace A231948.P13816915762334835980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (A117188 (2 * n) : ℚ)

end

end A231948.P13816915762334835980

/-! ## A231948.P3738622255555560278

`A231962(n)/(2-A130196(n)²)`
-/

namespace A231948.P3738622255555560278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (2 - A130196 n ^ 2 : ℚ)

end

end A231948.P3738622255555560278

/-! ## A231948.P6427558033338471215

`A231962(n)/A100051(2*n+1)`
-/

namespace A231948.P6427558033338471215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n : ℚ) / (A100051 (2 * n + 1) : ℚ)

end

end A231948.P6427558033338471215

/-! ## A231948.P10225071272279400460

`ratio[A061347(n+1)+1]*A231962(n)`
-/

namespace A231948.P10225071272279400460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A231962 n : ℚ)

end

end A231948.P10225071272279400460

/-! ## A231948.P1960431007836657208

`1/A100051(A005408(n))*A231962(n)`
-/

namespace A231948.P1960431007836657208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A100051 (A005408 n).toNat : ℚ) * (A231962 n : ℚ)

end

end A231948.P1960431007836657208

/-!
# A231949: Number of (n+1)X(n+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231949, there is no canonical definition to state claims against.
-/

/-! ## A231949.P3471576097443357615

`A231957((n+1)²+n²)`
-/

namespace A231949.P3471576097443357615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 ((n + 1) ^ 2 + n ^ 2)

end

end A231949.P3471576097443357615

/-! ## A231949.P1983427756385978343

`record[A003982(n)*A231957(n+1)]`
-/

namespace A231949.P1983427756385978343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231949.P1983427756385978343

/-!
# A231950: Number of (n+1)X(1+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231950, the canonical program `A231950.P8987690091065455676` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231950 has offset 1).

The definition of A231950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231950.P12608013354015206923

`ogf((4+2x)/(1-4x+2x^2-4x^3))`
-/

namespace A231950.P12608013354015206923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2] [1, -4, 2, -4] n

end

end A231950.P12608013354015206923

namespace A231950

/-- `ogf((4+2x)/(1-4x+2x^2-4x^3))` -/
def P12608013354015206923.Spec : Prop :=
  ∀ n, P12608013354015206923.a n = A231950 (n + 1)

end A231950

/-! ## A231950.P8987690091065455676

`4*a(n-1)-2*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=18, a(2)=64`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231950

/-- `4*a(n-1)-2*a(n-2)+4*a(n-3)` -/
def P8987690091065455676.Spec : Prop :=
  ∀ n, P8987690091065455676.a n = A231950 (n + 1)

theorem P8987690091065455676.correct : P8987690091065455676.Spec := by
  intro n
  simp only [A231950, Nat.add_sub_cancel]

end A231950

/-! ## A231950.P7277141765090418021

`A231957(∑[n]+1)`
-/

namespace A231950.P7277141765090418021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231950.P7277141765090418021

namespace A231950

/-- `A231957(∑[n]+1)` -/
def P7277141765090418021.Spec : Prop :=
  ∀ n, P7277141765090418021.a n = A231950 (n + 1)

end A231950

/-! ## A231950.P15790039436077883561

`A231957(A000096(n)+1)+A185238(n)`
-/

namespace A231950.P15790039436077883561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000096 n + 1).toNat + A185238 n

end

end A231950.P15790039436077883561

namespace A231950

/-- `A231957(A000096(n)+1)+A185238(n)` -/
def P15790039436077883561.Spec : Prop :=
  ∀ n, P15790039436077883561.a n = A231950 (n + 1)

end A231950

/-! ## A231950.P5085031028853823915

`A231957(A000096(n)+1)+A185284(n)`
-/

namespace A231950.P5085031028853823915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000096 n + 1).toNat + A185284 n

end

end A231950.P5085031028853823915

namespace A231950

/-- `A231957(A000096(n)+1)+A185284(n)` -/
def P5085031028853823915.Spec : Prop :=
  ∀ n, P5085031028853823915.a n = A231950 (n + 1)

end A231950

/-!
# A231951: Number of (n+1) X (2+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231951, there is no canonical definition to state claims against.
-/

/-! ## A231951.P5118232019722628953

`A231957(∑[n+1]+2)`
-/

namespace A231951.P5118232019722628953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231951.P5118232019722628953

/-! ## A231951.P1006645168929927831

`A231957(A000096(n)+3)+A185238(n)`
-/

namespace A231951.P1006645168929927831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000096 n + 3).toNat + A185238 n

end

end A231951.P1006645168929927831

/-! ## A231951.P9411548250653087375

`A231957(A000096(n)+3)+A185284(n)`
-/

namespace A231951.P9411548250653087375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000096 n + 3).toNat + A185284 n

end

end A231951.P9411548250653087375

/-! ## A231951.P4321775058218336097

`A256974(n)+A231957(A000096(n)+3)`
-/

namespace A231951.P4321775058218336097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A231957 (A000096 n + 3).toNat

end

end A231951.P4321775058218336097

/-! ## A231951.P14820774040527108397

`A231957(A000096(n+1))+A000007(n+1)`
-/

namespace A231951.P14820774040527108397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A231951.P14820774040527108397

/-!
# A231952: Number of (n+1)X(3+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231952, there is no canonical definition to state claims against.
-/

/-! ## A231952.P9183250014523733551

`A231957(∑[n+2]+4)`
-/

namespace A231952.P9183250014523733551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231952.P9183250014523733551

/-! ## A231952.P8157747055169930980

`lcm(2, A231957(A167614(n+1)))`
-/

namespace A231952.P8157747055169930980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231957 (A167614 (n + 1)).toNat)

end

end A231952.P8157747055169930980

/-! ## A231952.P16648095503637272417

`A231957(A167614(n+1))+A185238(n)`
-/

namespace A231952.P16648095503637272417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A167614 (n + 1)).toNat + A185238 n

end

end A231952.P16648095503637272417

/-! ## A231952.P7513363602201048139

`A231957(A167614(n+1))+A185284(n)`
-/

namespace A231952.P7513363602201048139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A167614 (n + 1)).toNat + A185284 n

end

end A231952.P7513363602201048139

/-! ## A231952.P13664406823650217473

`A231957(A167614(n+1))+A000007(n+2)`
-/

namespace A231952.P13664406823650217473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A167614 (n + 1)).toNat + A000007 (n + 2)

end

end A231952.P13664406823650217473

/-!
# A231953: Number of (n+1)X(4+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231953, there is no canonical definition to state claims against.
-/

/-! ## A231953.P17836426832124549967

`A231957(∑[n+3]+7)`
-/

namespace A231953.P17836426832124549967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231953.P17836426832124549967

/-! ## A231953.P9559246010733149352

`lcm(2, A231957(A056000(n)+7))`
-/

namespace A231953.P9559246010733149352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231957 (A056000 n + 7).toNat)

end

end A231953.P9559246010733149352

/-! ## A231953.P4183007159305008716

`A231957(A141214(n+1))+A185284(n)`
-/

namespace A231953.P4183007159305008716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A141214 (n + 1)).toNat + A185284 n

end

end A231953.P4183007159305008716

/-! ## A231953.P10482246804966778776

`A231957(A141214(n+1))+A000038(3*(n+1))`
-/

namespace A231953.P10482246804966778776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A141214 (n + 1)).toNat + A000038 (3 * (n + 1))

end

end A231953.P10482246804966778776

/-! ## A231953.P13949938587633485564

`A231957(A141214(n+1))%A178826(3*n+4)`
-/

namespace A231953.P13949938587633485564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231957 (A141214 (n + 1)).toNat) (A178826 (3 * n + 4))

end

end A231953.P13949938587633485564

/-!
# A231954: Number of (n+1)X(5+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231954, there is no canonical definition to state claims against.
-/

/-! ## A231954.P1984562418340180195

`A231957(eq[6, A131818(n+1)])`
-/

namespace A231954.P1984562418340180195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231954.P1984562418340180195

/-! ## A231954.P4437798565392013912

`A231957(Δ[A264443(n)])`
-/

namespace A231954.P4437798565392013912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (f1 (n + 1) - f1 n).toNat

end

end A231954.P4437798565392013912

/-! ## A231954.P14508077108888728201

`A231957(A374005(n+1))`
-/

namespace A231954.P14508077108888728201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A374005 (n + 1)).toNat

end

end A231954.P14508077108888728201

/-! ## A231954.P1667949002360883897

`A231957(A046691(n+3))`
-/

namespace A231954.P1667949002360883897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A046691 (n + 3)).toNat

end

end A231954.P1667949002360883897

/-! ## A231954.P13743413299727104367

`A231957(eq[4, A193592(n)])`
-/

namespace A231954.P13743413299727104367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231954.P13743413299727104367

/-!
# A231955: Number of (n+1) X (6+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231955, there is no canonical definition to state claims against.
-/

/-! ## A231955.P1165785154450694862

`A231957(eq[7, A131818(n+1)])`
-/

namespace A231955.P1165785154450694862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231955.P1165785154450694862

/-! ## A231955.P6091955350101932280

`A231957(A000217(n+6)-n%A103517(n))`
-/

namespace A231955.P6091955350101932280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000217 (n + 6) - Int.tmod (n : ℤ) (A103517 n)).toNat

end

end A231955.P6091955350101932280

/-! ## A231955.P4447685326479115478

`A231957(A374007(n+1))`
-/

namespace A231955.P4447685326479115478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A374007 (n + 1)).toNat

end

end A231955.P4447685326479115478

/-! ## A231955.P1389486979012170925

`A231957(eq[3, A219347(n)])`
-/

namespace A231955.P1389486979012170925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231955.P1389486979012170925

/-! ## A231955.P8157978495333286914

`A231957(eq[5, A193592(n)])`
-/

namespace A231955.P8157978495333286914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231955.P8157978495333286914

/-!
# A231956: Number of (n+1)X(7+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231956, there is no canonical definition to state claims against.
-/

/-! ## A231956.P10235100843782882379

`A231957(eq[8, A131818(n+1)])`
-/

namespace A231956.P10235100843782882379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231956.P10235100843782882379

/-! ## A231956.P9367721838240152628

`A231957(A374008(n+1))`
-/

namespace A231956.P9367721838240152628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A374008 (n + 1)).toNat

end

end A231956.P9367721838240152628

/-! ## A231956.P5024391754936151509

`A231957(eq[4, A219347(n)])`
-/

namespace A231956.P5024391754936151509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231956.P5024391754936151509

/-! ## A231956.P11961506230151543634

`A231957(eq[6, A193592(n)])`
-/

namespace A231956.P11961506230151543634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231956.P11961506230151543634

/-! ## A231956.P17889472575297526914

`A231957(A000217(n+6)+n+1)`
-/

namespace A231956.P17889472575297526914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231957 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A231956.P17889472575297526914

/-!
# A231957: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every element equal to some horizontal, vertical, diagonal or antidiagonal neighbor, with top left element zero.

The programs for A231957, there is no canonical definition to state claims against.
-/

/-! ## A231957.P9036067548918098837

`A101185(A250313(n+1))`
-/

namespace A231957.P9036067548918098837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101185 (A250313 (n + 1)).toNat

end

end A231957.P9036067548918098837

/-!
# A231958: Numbers n dividing the Lucas sequence u(n) defined by u(i) = 2*u(i-1) - 5*u(i-2) with initial conditions u(0)=0, u(1)=1.

The programs for A231958, there is no canonical definition to state claims against.
-/

/-! ## A231958.P16739874191268121545

`record[gcd(n+1, A099456(n))]`
-/

namespace A231958.P16739874191268121545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A099456 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231958.P16739874191268121545

/-! ## A231958.P3229376184893648073

`record[gcd(A006496(n), A060000(n+1))]`
-/

namespace A231958.P3229376184893648073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006496 n) (A060000 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231958.P3229376184893648073

/-! ## A231958.P573444804323376309

`record[gcd(A094423(n+1), A205406(n+1))]`
-/

namespace A231958.P573444804323376309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094423 (n + 1)) (A205406 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231958.P573444804323376309

/-! ## A231958.P8989289851240130376

`record[A086932(A273592(n+1)+n)]`
-/

namespace A231958.P8989289851240130376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086932 (A273592 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231958.P8989289851240130376

/-! ## A231958.P11424559130116364834

`∩[A100417(n+1), A340111(n+1)]`
-/

namespace A231958.P11424559130116364834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231958.P11424559130116364834

/-!
# A231959: Numbers n dividing the Lucas sequence u(n) defined by u(i) = 3*u(i-1) - u(i-2) with initial conditions u(0)=0, u(1)=1.

The programs for A231959, the canonical program `A231959.P9351094932317826349` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231959 has offset 1).

The definition of A231959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231959.P5914461254921036555

`lt[xor(1, n), A104714(2*n)]`
-/

namespace A231959.P5914461254921036555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A231959.P5914461254921036555

namespace A231959

/-- `lt[xor(1, n), A104714(2*n)]` -/
def P5914461254921036555.Spec : Prop :=
  ∀ n, (P5914461254921036555.a n : ℤ) = A231959 (n + 1)

end A231959

/-! ## A231959.P9351094932317826349

`record[gcd(n+1, A132634(2*(n+1)))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A231959

/-- `record[gcd(n+1, A132634(2*(n+1)))]` -/
def P9351094932317826349.Spec : Prop :=
  ∀ n, (P9351094932317826349.a n : ℤ) = A231959 (n + 1)

theorem P9351094932317826349.correct : P9351094932317826349.Spec := by
  intro n
  simp only [A231959, Nat.add_sub_cancel]

end A231959

/-! ## A231959.P14611931669738529670

`record[gcd(A008486(n), A104714(2*n))]`
-/

namespace A231959.P14611931669738529670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n) (A104714 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P14611931669738529670

namespace A231959

/-- `record[gcd(A008486(n), A104714(2*n))]` -/
def P14611931669738529670.Spec : Prop :=
  ∀ n, (P14611931669738529670.a n : ℤ) = A231959 (n + 1)

end A231959

/-! ## A231959.P8490707020080391632

`lt[n, A158388(n)+A104714(2*n)]`
-/

namespace A231959.P8490707020080391632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A104714 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A231959.P8490707020080391632

namespace A231959

/-- `lt[n, A158388(n)+A104714(2*n)]` -/
def P8490707020080391632.Spec : Prop :=
  ∀ n, (P8490707020080391632.a n : ℤ) = A231959 (n + 1)

end A231959

/-! ## A231959.P8976089353003222873

`record[gcd(A065033(n), A104714(n))]`
-/

namespace A231959.P8976089353003222873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 n) (A104714 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P8976089353003222873

namespace A231959

/-- `record[gcd(A065033(n), A104714(n))]` -/
def P8976089353003222873.Spec : Prop :=
  ∀ n, (P8976089353003222873.a n : ℤ) = A231959 (n + 1)

end A231959

/-! ## A231959.P4991900582157001485

`record[gcd(A008619(2*n), A132636(2*n+2))]`
-/

namespace A231959.P4991900582157001485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (2 * n)) (A132636 (2 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P4991900582157001485

namespace A231959

/-- `record[gcd(A008619(2*n), A132636(2*n+2))]` -/
def P4991900582157001485.Spec : Prop :=
  ∀ n, (P4991900582157001485.a n : ℤ) = A231959 (n + 1)

end A231959

/-! ## A231959.P3285414674122078211

`record[gcd(n+1-A002708(n+1), A110654(n+1))]`
-/

namespace A231959.P3285414674122078211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A002708 (n + 1)) (A110654 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P3285414674122078211

namespace A231959

/-- `record[gcd(n+1-A002708(n+1), A110654(n+1))]` -/
def P3285414674122078211.Spec : Prop :=
  ∀ n, (P3285414674122078211.a n : ℤ) = A231959 (n + 1)

end A231959

/-! ## A231959.P2285629205076867421

`record[A026741(A104714(A103517(n)))]`
-/

namespace A231959.P2285629205076867421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A104714 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231959.P2285629205076867421

namespace A231959

/-- `record[A026741(A104714(A103517(n)))]` -/
def P2285629205076867421.Spec : Prop :=
  ∀ n, P2285629205076867421.a n = A231959 (n + 1)

end A231959

/-!
# A231960: Powers of 3 together with multiples of 6.

The programs for A231960, the canonical program `A231960.P3908795638173034957` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231960 has offset 1).

The definition of A231960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231960.P3908795638173034957

`∪[6*(n+1), 3^n]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A231960

/-- `∪[6*(n+1), 3^n]` -/
def P3908795638173034957.Spec : Prop :=
  ∀ n, (P3908795638173034957.a n : ℤ) = A231960 (n + 1)

theorem P3908795638173034957.correct : P3908795638173034957.Spec := by
  intro n
  simp only [A231960, Nat.add_sub_cancel]

end A231960

/-! ## A231960.P16182601002694378220

`A008486(record[A353158(n)])`
-/

namespace A231960.P16182601002694378220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A231960.P16182601002694378220

namespace A231960

/-- `A008486(record[A353158(n)])` -/
def P16182601002694378220.Spec : Prop :=
  ∀ n, P16182601002694378220.a n = A231960 (n + 1)

end A231960

/-! ## A231960.P453096435282612695

`record[gcd(n+1, A000748(n))]`
-/

namespace A231960.P453096435282612695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231960.P453096435282612695

namespace A231960

/-- `record[gcd(n+1, A000748(n))]` -/
def P453096435282612695.Spec : Prop :=
  ∀ n, (P453096435282612695.a n : ℤ) = A231960 (n + 1)

end A231960

/-! ## A231960.P5652174402002838558

`record[gcd(n+2, A057083(n+1))]`
-/

namespace A231960.P5652174402002838558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A057083 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231960.P5652174402002838558

namespace A231960

/-- `record[gcd(n+2, A057083(n+1))]` -/
def P5652174402002838558.Spec : Prop :=
  ∀ n, (P5652174402002838558.a n : ℤ) = A231960 (n + 1)

end A231960

/-! ## A231960.P8270800462407102457

`record[gcd(3*n, (6*n%2)^n)]`
-/

namespace A231960.P8270800462407102457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) ((6 * (n % 2)) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231960.P8270800462407102457

namespace A231960

/-- `record[gcd(3*n, (6*n%2)^n)]` -/
def P8270800462407102457.Spec : Prop :=
  ∀ n, (P8270800462407102457.a n : ℤ) = A231960 (n + 1)

end A231960

/-!
# A231961: Expansion of b(q)^3 - 3*c(q)^3 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A231961, there is no canonical definition to state claims against.
-/

/-! ## A231961.P17637563560546353808

`A231948(3*n)`
-/

namespace A231961.P17637563560546353808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231948 (3 * n)

end

end A231961.P17637563560546353808

/-! ## A231961.P16163645093308288019

`A231962(3*n)`
-/

namespace A231961.P16163645093308288019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231962 (3 * n)

end

end A231961.P16163645093308288019

/-! ## A231961.P5140014458423198441

`A231962(A008585(n))%A016900(n)`
-/

namespace A231961.P5140014458423198441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231962 (A008585 n).toNat) (A016900 n)

end

end A231961.P5140014458423198441

/-! ## A231961.P17382310007945392825

`A231962(A008585(n))/A001511(Δ[n²])`
-/

namespace A231961.P17382310007945392825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 (A008585 n).toNat : ℚ) / (A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A231961.P17382310007945392825

/-! ## A231961.P8515418315727238350

`A231962(A008585(n))+A139032(A016789(n))`
-/

namespace A231961.P8515418315727238350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231962 (A008585 n).toNat + A139032 (A016789 n).toNat

end

end A231961.P8515418315727238350

/-! ## A231961.P17642212046626344229

`A231962(A008585(n))/A014963(A024556(n+1))`
-/

namespace A231961.P17642212046626344229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 (A008585 n).toNat : ℚ) / (A014963 (A024556 (n + 1)).toNat : ℚ)

end

end A231961.P17642212046626344229

/-!
# A231962: Expansion of b(q)^3 - (1/3)*c(q)^3 in powers of q where b(), c() are cubic AGM theta functions.

The programs for A231962, there is no canonical definition to state claims against.
-/

/-! ## A231962.P17762521690549020981

`A131713(n)*A231948(n)`
-/

namespace A231962.P17762521690549020981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A231948 n

end

end A231962.P17762521690549020981

/-! ## A231962.P16742521138604932635

`Δ[A117966(n)]*A231948(n)`
-/

namespace A231962.P16742521138604932635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A231948 n

end

end A231962.P16742521138604932635

/-! ## A231962.P10410008224587397759

`A061347(n+2)*A231948(n)`
-/

namespace A231962.P10410008224587397759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A231948 n

end

end A231962.P10410008224587397759

/-! ## A231962.P15836292144508131781

`(2-A100402(n))*A231948(n)`
-/

namespace A231962.P15836292144508131781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A100402 n) * A231948 n

end

end A231962.P15836292144508131781

/-! ## A231962.P664619659722309509

`A101675(2*n)*A231948(n)`
-/

namespace A231962.P664619659722309509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (2 * n) * A231948 n

end

end A231962.P664619659722309509

/-! ## A231962.P15373422177607866417

`A117188(2*n)*A231948(n)`
-/

namespace A231962.P15373422177607866417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (2 * n) * A231948 n

end

end A231962.P15373422177607866417

/-! ## A231962.P4763137797632111833

`A100051(2*n+1)*A231948(n)`
-/

namespace A231962.P4763137797632111833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (2 * n + 1) * A231948 n

end

end A231962.P4763137797632111833

/-! ## A231962.P15675395549598106928

`A231948(n)/ratio[A061347(n+1)+1]`
-/

namespace A231962.P15675395549598106928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231948 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A231962.P15675395549598106928

/-!
# A231963: Concatenate n with its UPC check digit, a(n) = 10*n + A237042(n).

The programs for A231963, there is no canonical definition to state claims against.
-/

/-! ## A231963.P10222941214628200501

`10*(n+1)+A237042(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231963.P10222941214628200501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) + A237042 (n + 1)

end

end A231963.P10222941214628200501

/-! ## A231963.P17213179497142299639

`(7*A028902(n+1))%10+10*(n+1)`
-/

namespace A231963.P17213179497142299639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A028902 (n + 1)) 10 + (10 * (n + 1) : ℤ)

end

end A231963.P17213179497142299639

/-! ## A231963.P9642223137565220965

`A008592(n+1)+∑[7-val(n+1, 10)]%10`
-/

namespace A231963.P9642223137565220965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A231963.P9642223137565220965

/-! ## A231963.P7037654497192129730

`(A094677(n+1)-2*(n+1))%10+10*(n+1)`
-/

namespace A231963.P7037654497192129730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094677 (n + 1) - (2 * (n + 1) : ℤ)) 10 + (10 * (n + 1) : ℤ)

end

end A231963.P7037654497192129730

/-! ## A231963.P9233108524450205865

`(A055017(n+1)+6*(n+1))%10+10*(n+1)`
-/

namespace A231963.P9233108524450205865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055017 (n + 1) + (6 * (n + 1) : ℤ)) 10 + (10 * (n + 1) : ℤ)

end

end A231963.P9233108524450205865

/-! ## A231963.P9316468848756891800

`A237042(n+1)+A008592(n)+10`
-/

namespace A231963.P9316468848756891800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237042 (n + 1) + A008592 n + 10

end

end A231963.P9316468848756891800

/-! ## A231963.P14206874695111369371

`A008592(n+1)+(7*A028902(n+1))%10`
-/

namespace A231963.P14206874695111369371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) + Int.tmod (7 * A028902 (n + 1)) 10

end

end A231963.P14206874695111369371

/-! ## A231963.P16380706887773716070

`A008592(n+1)+∑[A034963(val(n+1, 10)+1)]%10`
-/

namespace A231963.P16380706887773716070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (SequenceMachineLib.valuation (n + 1) 10 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A231963.P16380706887773716070

/-! ## A231963.P17722324339719037808

`A144468(A081598(n+1))+A008592(n+1)`
-/

namespace A231963.P17722324339719037808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144468 (A081598 (n + 1)).toNat + A008592 (n + 1)

end

end A231963.P17722324339719037808

/-! ## A231963.P14135521581984547917

`A010879(7*A028902(n+1))+A008592(n+1)`
-/

namespace A231963.P14135521581984547917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (7 * A028902 (n + 1)).toNat + A008592 (n + 1)

end

end A231963.P14135521581984547917

/-!
# A231964: Lesser member of untouchable twin pairs, that is, such that a(n) and a(n)+2 are untouchable (A005114).

The programs for A231964, there is no canonical definition to state claims against.
-/

/-! ## A231964.P17051017122627607949

`∩[A005114(n+1)-2, A005114(n+1)]`
-/

namespace A231964.P17051017122627607949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231964.P17051017122627607949

/-! ## A231964.P16587561335480207

`A005114(eq[2, A005114(n+2)-A005114(n+1)]+1)`
-/

namespace A231964.P16587561335480207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 2) - A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A231964.P16587561335480207

/-! ## A231964.P1336832879200301742

`∩[A005114(n+1), A023443(A048995(n+1))]`
-/

namespace A231964.P1336832879200301742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A048995 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231964.P1336832879200301742

/-! ## A231964.P201911467451585476

`A023443(∩[A048995(n+1)+2, A048995(n+1)])`
-/

namespace A231964.P201911467451585476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A231964.P201911467451585476

/-!
# A231966: Squarefree numbers (from A005117) with prime divisors in a 2p+1 progression.

The programs for A231966, there is no canonical definition to state claims against.
-/

/-! ## A231966.P12946410074591416351

`A156592(A262507(n))%A100456(2*n+5)`
-/

namespace A231966.P12946410074591416351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156592 (A262507 n).toNat) (A100456 (2 * n + 5))

end

end A231966.P12946410074591416351

/-!
# A231967: Squarefree numbers (A005117) of the form p*q*r with prime factors p, q, r with q = 2*p + 1 and r = 2*q + 1.

The programs for A231967, there is no canonical definition to state claims against.
-/

/-! ## A231967.P6932194305525717854

`A059455(n+1)*A100930(n+1)`
-/

namespace A231967.P6932194305525717854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1) * A100930 (n + 1)

end

end A231967.P6932194305525717854

/-! ## A231967.P18259023234190872576

`(2*A007700(n+1)+1)*A100930(n+1)`
-/

namespace A231967.P18259023234190872576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A007700 (n + 1) + 1) * A100930 (n + 1)

end

end A231967.P18259023234190872576

/-! ## A231967.P15349749109026557558

`lcm(A059455(A000027(n+1)), A100930(n+1))`
-/

namespace A231967.P15349749109026557558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059455 (A000027 (n + 1)).toNat) (A100930 (n + 1))

end

end A231967.P15349749109026557558

/-! ## A231967.P6878977542772137063

`lcm(A059455(n+1), A100930(1-A001489(n)))`
-/

namespace A231967.P6878977542772137063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059455 (n + 1)) (A100930 (1 - A001489 n).toNat)

end

end A231967.P6878977542772137063

/-! ## A231967.P2226027730047275962

`A007700(n+1)*A059455(n+1)*A066179(n+1)`
-/

namespace A231967.P2226027730047275962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1) * A059455 (n + 1) * A066179 (n + 1)

end

end A231967.P2226027730047275962

/-! ## A231967.P1415975779003918513

`A070846(A007700(n+1))*A100930(n+1)`
-/

namespace A231967.P1415975779003918513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A007700 (n + 1)).toNat * A100930 (n + 1)

end

end A231967.P1415975779003918513

/-! ## A231967.P6971022599818692925

`A100930(n+1)*A297381(A066179(n+1))`
-/

namespace A231967.P6971022599818692925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100930 (n + 1) * A297381 (A066179 (n + 1)).toNat

end

end A231967.P6971022599818692925

/-!
# A231968: Squarefree numbers (A005117) of the form p*q*r*s with prime factors p, q, r, s with q = 2*p + 1, r = 2*q + 1 and s = 2*r + 1.

The programs for A231968, there is no canonical definition to state claims against.
-/

/-! ## A231968.P11534233606068320097

`A023272(n+1)*(2*A023272(n+1)+1)*(4*A023272(n+1)+3)*(8*A023272(n+1)+7)`
-/

namespace A231968.P11534233606068320097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023272 (n + 1) * (2 * A023272 (n + 1) + 1) * (4 * A023272 (n + 1) + 3) * (8 * A023272 (n + 1) + 7)

end

end A231968.P11534233606068320097

/-!
# A231969: a(n) = the smallest squarefree number (A005117) with n prime factors in a 2p+1 progression.

The programs for A231969, there is no canonical definition to state claims against.
-/

/-! ## A231969.P1326307681706311847

`∏{p}[∏[3*2^n-1], #]`
-/

namespace A231969.P1326307681706311847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A231969.P1326307681706311847

/-!
# A231970: Number of (n+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231970, there is no canonical definition to state claims against.
-/

/-! ## A231970.P2576924959969552631

`A231977((n+1)²+n²)`
-/

namespace A231970.P2576924959969552631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 ((n + 1) ^ 2 + n ^ 2)

end

end A231970.P2576924959969552631

/-! ## A231970.P1095656464379030561

`record[A003982(n)*A231977(n+1)]`
-/

namespace A231970.P1095656464379030561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231970.P1095656464379030561

/-! ## A231970.P2495491861459757115

`record[root(A231977(n+1), A143182(n))]`
-/

namespace A231970.P2495491861459757115
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231977 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231970.P2495491861459757115

/-! ## A231970.P8308996527060397895

`record[gcd(A114327(n), A231977(n+1))]`
-/

namespace A231970.P8308996527060397895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231977 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231970.P8308996527060397895

/-! ## A231970.P12321697896039215279

`or(A000007(n), A231977(A001844(n)))`
-/

namespace A231970.P12321697896039215279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A231977 (A001844 n).toNat)

end

end A231970.P12321697896039215279

/-!
# A231971: Number of (n+1) X (2+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231971, there is no canonical definition to state claims against.
-/

/-! ## A231971.P8568224378869738565

`A231977(∑[n+1]+2)`
-/

namespace A231971.P8568224378869738565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231971.P8568224378869738565

/-! ## A231971.P12732062095904835288

`record[A010054(n)*A231977(n+2)]`
-/

namespace A231971.P12732062095904835288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231977 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231971.P12732062095904835288

/-! ## A231971.P10879659219811207077

`record[root(A231977(n+2), A203647(n+1))]`
-/

namespace A231971.P10879659219811207077
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231977 (n + 2) : ℝ) ^ (1 / (A203647 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231971.P10879659219811207077

/-! ## A231971.P8751543794602262801

`record[root(A231977(n+2), A209297(n+1))]`
-/

namespace A231971.P8751543794602262801
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231977 (n + 2) : ℝ) ^ (1 / (A209297 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231971.P8751543794602262801

/-! ## A231971.P1407731141786325494

`A231977(A133263(n+1))%A124955(n+2)`
-/

namespace A231971.P1407731141786325494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231977 (A133263 (n + 1)).toNat) (A124955 (n + 2))

end

end A231971.P1407731141786325494

/-!
# A231972: Number of (n+1)X(3+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231972, there is no canonical definition to state claims against.
-/

/-! ## A231972.P11081399398643134344

`A231977(∑[n+2]+4)`
-/

namespace A231972.P11081399398643134344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231972.P11081399398643134344

/-! ## A231972.P7428418344705488511

`A231977(A167614(n+1))+A185284(n)`
-/

namespace A231972.P7428418344705488511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A167614 (n + 1)).toNat + A185284 n

end

end A231972.P7428418344705488511

/-! ## A231972.P15101832614715858056

`lcm(A033999(n), A231977(A167614(n+1)))`
-/

namespace A231972.P15101832614715858056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231977 (A167614 (n + 1)).toNat)

end

end A231972.P15101832614715858056

/-! ## A231972.P5410943231441968382

`A231977(A167614(n+1))+A034526(n+1)`
-/

namespace A231972.P5410943231441968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A167614 (n + 1)).toNat + A034526 (n + 1)

end

end A231972.P5410943231441968382

/-! ## A231972.P9281673702981002825

`A161618(n+1)*A231977(A167614(n+1))`
-/

namespace A231972.P9281673702981002825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A231977 (A167614 (n + 1)).toNat

end

end A231972.P9281673702981002825

/-!
# A231973: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231973, there is no canonical definition to state claims against.
-/

/-! ## A231973.P14263836957701686299

`A231977(A374004(n+1))`
-/

namespace A231973.P14263836957701686299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A374004 (n + 1)).toNat

end

end A231973.P14263836957701686299

/-! ## A231973.P11058026453816199842

`A231977(A141214(n)+7)`
-/

namespace A231973.P11058026453816199842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A141214 n + 7).toNat

end

end A231973.P11058026453816199842

/-! ## A231973.P15269450903899958619

`A231977(A052905(n)+9)`
-/

namespace A231973.P15269450903899958619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A052905 n + 9).toNat

end

end A231973.P15269450903899958619

/-! ## A231973.P14376128466625988022

`A231977(A055999(n)+10)`
-/

namespace A231973.P14376128466625988022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A055999 n + 10).toNat

end

end A231973.P14376128466625988022

/-! ## A231973.P6440044917498243710

`A231977(A167614(n+2)+1)`
-/

namespace A231973.P6440044917498243710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A167614 (n + 2) + 1).toNat

end

end A231973.P6440044917498243710

/-!
# A231974: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231974, there is no canonical definition to state claims against.
-/

/-! ## A231974.P10707613071940359777

`A231977(A374005(n+1))`
-/

namespace A231974.P10707613071940359777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A374005 (n + 1)).toNat

end

end A231974.P10707613071940359777

/-! ## A231974.P7825921649517951958

`A231977(A167499(n+3))`
-/

namespace A231974.P7825921649517951958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A167499 (n + 3)).toNat

end

end A231974.P7825921649517951958

/-! ## A231974.P7689202043485739349

`A231977(A155212(n)+13)`
-/

namespace A231974.P7689202043485739349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A155212 n + 13).toNat

end

end A231974.P7689202043485739349

/-! ## A231974.P12334871365381969633

`A231977(eq[6, A131818(n+1)])`
-/

namespace A231974.P12334871365381969633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231974.P12334871365381969633

/-! ## A231974.P11020447321636512043

`record[A231977(A167499(A027656(n)))]`
-/

namespace A231974.P11020447321636512043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A167499 (A027656 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231974.P11020447321636512043

/-!
# A231975: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231975, there is no canonical definition to state claims against.
-/

/-! ## A231975.P834454983783220985

`A231977(A374007(n+1))`
-/

namespace A231975.P834454983783220985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A374007 (n + 1)).toNat

end

end A231975.P834454983783220985

/-! ## A231975.P4384878154318537973

`A231977(eq[7, A131818(n+1)])`
-/

namespace A231975.P4384878154318537973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231975.P4384878154318537973

/-! ## A231975.P10435756832694664261

`A231977(A052905(n+3))`
-/

namespace A231975.P10435756832694664261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A052905 (n + 3)).toNat

end

end A231975.P10435756832694664261

/-! ## A231975.P13516414139723951069

`A231977(eq[5, A193592(n)])`
-/

namespace A231975.P13516414139723951069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231975.P13516414139723951069

/-! ## A231975.P18197136619614610233

`A231977(Δ[A103145(n)]-n)`
-/

namespace A231975.P18197136619614610233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A231975.P18197136619614610233

/-!
# A231976: Number of (n+1)X(7+1) 0..1 arrays with no element having a strict majority of its horizontal and vertical neighbors equal to one.

The programs for A231976, there is no canonical definition to state claims against.
-/

/-! ## A231976.P3506696562241779025

`A231977(A374008(n+1))`
-/

namespace A231976.P3506696562241779025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A374008 (n + 1)).toNat

end

end A231976.P3506696562241779025

/-! ## A231976.P14063993347138842223

`A231977(A167487(n+5))`
-/

namespace A231976.P14063993347138842223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A167487 (n + 5)).toNat

end

end A231976.P14063993347138842223

/-! ## A231976.P16203637589175389907

`A231977(eq[8, A131818(n+1)])`
-/

namespace A231976.P16203637589175389907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231976.P16203637589175389907

/-! ## A231976.P7416164848070470496

`A231977(A055999(n+4))`
-/

namespace A231976.P7416164848070470496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (A055999 (n + 4)).toNat

end

end A231976.P7416164848070470496

/-! ## A231976.P8300662609276615430

`A231977(eq[6, A193592(n)])`
-/

namespace A231976.P8300662609276615430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231976.P8300662609276615430

/-!
# A231979: Numbers n such that for every digit d in n, 2*n + 6*d - 3 is prime.

The programs for A231979, there is no canonical definition to state claims against.
-/

/-! ## A231979.P3296658328175773101

`eq[A245563(A089942(2*n+1)), A317846(2*n+3)]`
-/

namespace A231979.P3296658328175773101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 (A089942 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317846 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231979.P3296658328175773101

/-! ## A231979.P11512250844845802952

`eq[A025855(A029079(n)), A025858(n)]`
-/

namespace A231979.P11512250844845802952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 (A029079 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231979.P11512250844845802952

/-! ## A231979.P4823819556687632418

`lt[A007318(A020615(n+1)), A248025(n+1)]`
-/

namespace A231979.P4823819556687632418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020615 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231979.P4823819556687632418

/-! ## A231979.P5344566894756117970

`lt[A007918(n), A129816(A339662(2*n+3))]`
-/

namespace A231979.P5344566894756117970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129816 (A339662 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231979.P5344566894756117970

/-! ## A231979.P10279758204823741708

`eq[A037916(2*n+5), A219347(A057568(n+1))]+1`
-/

namespace A231979.P10279758204823741708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A057568 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A231979.P10279758204823741708

/-!
# A231988: Primes of the form triangular(p) + 1, where p is a prime.

The programs for A231988, there is no canonical definition to state claims against.
-/

/-! ## A231988.P8770759083520800671

`A000217(A231847(n+1))+1`
-/

namespace A231988.P8770759083520800671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A231847 (n + 1)).toNat + 1

end

end A231988.P8770759083520800671

/-! ## A231988.P1795708222296998955

`p?[A320900(n+1)]`
-/

namespace A231988.P1795708222296998955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231988.P1795708222296998955

/-! ## A231988.P1007992591461992151

`p?[∑[A138383(n)]+1]`
-/

namespace A231988.P1007992591461992151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231988.P1007992591461992151

/-! ## A231988.P3060913106933305773

`p?[Δ[A366937(n+1)]]`
-/

namespace A231988.P3060913106933305773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231988.P3060913106933305773

/-! ## A231988.P6319640031179344194

`p?[A034953(n+1)+1]`
-/

namespace A231988.P6319640031179344194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231988.P6319640031179344194

/-!
# A231990: First differences of Stanley sequence S(0,5) (A187843).

The programs for A231990, there is no canonical definition to state claims against.
-/

/-! ## A231990.P4988862993363957980

`Δ[A187843(n+1)]`
-/

namespace A231990.P4988862993363957980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231990.P4988862993363957980

/-! ## A231990.P15850628688467539878

`Δ[record[A187843(A328396(n))]]`
-/

namespace A231990.P15850628688467539878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187843 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231990.P15850628688467539878

/-! ## A231990.P700677966452812998

`A187843(n+2)-A187843(n+1)`
-/

namespace A231990.P700677966452812998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187843 (n + 2) - A187843 (n + 1)

end

end A231990.P700677966452812998

/-! ## A231990.P4486653148590249865

`Δ[record[A187843(A133310(n))]]`
-/

namespace A231990.P4486653148590249865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187843 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231990.P4486653148590249865

/-! ## A231990.P10420268758829831239

`Δ[record[A187843(A327857(n))]]`
-/

namespace A231990.P10420268758829831239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187843 (A327857 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231990.P10420268758829831239

/-!
# A231991: Number of (n+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231991, there is no canonical definition to state claims against.
-/

/-! ## A231991.P7689584793614891372

`A231997(∑[4*n]+1)`
-/

namespace A231991.P7689584793614891372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231991.P7689584793614891372

/-! ## A231991.P8164858456541002062

`record[A003982(n)*A231997(n+1)]`
-/

namespace A231991.P8164858456541002062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231991.P8164858456541002062

/-! ## A231991.P14464725693045966643

`record[gcd(A114327(n), A231997(n+1))]`
-/

namespace A231991.P14464725693045966643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231991.P14464725693045966643

/-! ## A231991.P17153932036190312589

`record[root(A231997(n+1), A304337(n+1))]`
-/

namespace A231991.P17153932036190312589
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231997 (n + 1) : ℝ) ^ (1 / (A304337 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231991.P17153932036190312589

/-! ## A231991.P10683676134733123097

`A007318(∑[n])*A231997(A001844(n))`
-/

namespace A231991.P10683676134733123097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A231997 (A001844 n).toNat

end

end A231991.P10683676134733123097

/-!
# A231992: Number of (n+1) X (2+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231992, there is no canonical definition to state claims against.
-/

/-! ## A231992.P13624138350838950693

`A231997(∑[n+2])`
-/

namespace A231992.P13624138350838950693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231992.P13624138350838950693

/-! ## A231992.P9899094178909760892

`lcm(2, A231997(A000096(n+1)))`
-/

namespace A231992.P9899094178909760892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231997 (A000096 (n + 1)).toNat)

end

end A231992.P9899094178909760892

/-! ## A231992.P1472595964126100199

`A231997(A000096(n+1))+A000007(n+1)`
-/

namespace A231992.P1472595964126100199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A231992.P1472595964126100199

/-! ## A231992.P11516557412920238059

`A231997(A000096(n+1))%A099125(n+1)`
-/

namespace A231992.P11516557412920238059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231997 (A000096 (n + 1)).toNat) (A099125 (n + 1))

end

end A231992.P11516557412920238059

/-! ## A231992.P11418515666357131589

`record[A231997(A000096(val(n+1, 2)+1))]`
-/

namespace A231992.P11418515666357131589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231992.P11418515666357131589

/-!
# A231993: Number of (n+1)X(4+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231993, there is no canonical definition to state claims against.
-/

/-! ## A231993.P9228235937114878374

`A231997(A141214(n+1))`
-/

namespace A231993.P9228235937114878374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A141214 (n + 1)).toNat

end

end A231993.P9228235937114878374

/-! ## A231993.P14870007718012516808

`A231997(A155212(n)+5)`
-/

namespace A231993.P14870007718012516808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A155212 n + 5).toNat

end

end A231993.P14870007718012516808

/-! ## A231993.P6408685863380437482

`A231997(A056000(n)+7)`
-/

namespace A231993.P6408685863380437482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A056000 n + 7).toNat

end

end A231993.P6408685863380437482

/-! ## A231993.P11850939011502385273

`A231997(A052905(n+1)+2)`
-/

namespace A231993.P11850939011502385273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A052905 (n + 1) + 2).toNat

end

end A231993.P11850939011502385273

/-! ## A231993.P15094622785620296033

`A231997(A253145(n+3)-3)`
-/

namespace A231993.P15094622785620296033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A253145 (n + 3) - 3).toNat

end

end A231993.P15094622785620296033

/-!
# A231994: Number of (n+1)X(5+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231994, there is no canonical definition to state claims against.
-/

/-! ## A231994.P3461283359033250497

`A231997(Δ[A264443(n)])`
-/

namespace A231994.P3461283359033250497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (f1 (n + 1) - f1 n).toNat

end

end A231994.P3461283359033250497

/-! ## A231994.P12514510350696831286

`A231997(A046691(n+3))`
-/

namespace A231994.P12514510350696831286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A046691 (n + 3)).toNat

end

end A231994.P12514510350696831286

/-! ## A231994.P14793156750903958966

`A231997(eq[2, A092921(n)])`
-/

namespace A231994.P14793156750903958966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231994.P14793156750903958966

/-! ## A231994.P2942114545547217120

`A231997(eq[4, A193592(n)])`
-/

namespace A231994.P2942114545547217120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231994.P2942114545547217120

/-! ## A231994.P1837898508293397716

`A231997(Δ[A023545(n+1)])`
-/

namespace A231994.P1837898508293397716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (f1 (n + 1) - f1 n).toNat

end

end A231994.P1837898508293397716

/-!
# A231995: Number of (n+1)X(6+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231995, there is no canonical definition to state claims against.
-/

/-! ## A231995.P8871950172226073102

`A231997(A052905(n+3))`
-/

namespace A231995.P8871950172226073102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A052905 (n + 3)).toNat

end

end A231995.P8871950172226073102

/-! ## A231995.P9471171390833064858

`A231997(eq[3, A219347(n)])`
-/

namespace A231995.P9471171390833064858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231995.P9471171390833064858

/-! ## A231995.P10015407329137407757

`A231997(eq[5, A193592(n)])`
-/

namespace A231995.P10015407329137407757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231995.P10015407329137407757

/-! ## A231995.P9746606388329614654

`A231997(eq[8, A185782(n+1)])`
-/

namespace A231995.P9746606388329614654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231995.P9746606388329614654

/-! ## A231995.P10580069988146603610

`A231997(Δ[Δ[A006504(n+1)]])`
-/

namespace A231995.P10580069988146603610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (f1 (n + 1) - f1 n).toNat

end

end A231995.P10580069988146603610

/-!
# A231996: Number of (n+1)X(7+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231996, there is no canonical definition to state claims against.
-/

/-! ## A231996.P7142831254456877961

`A231997(A055999(n+4))`
-/

namespace A231996.P7142831254456877961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A055999 (n + 4)).toNat

end

end A231996.P7142831254456877961

/-! ## A231996.P6587326223845092882

`A231997(eq[4, A219347(n)])`
-/

namespace A231996.P6587326223845092882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231996.P6587326223845092882

/-! ## A231996.P203034995876266958

`A231997(eq[6, A193592(n)])`
-/

namespace A231996.P203034995876266958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231996.P203034995876266958

/-! ## A231996.P2563234838466907203

`A231997(eq[10, A185782(n+1)])`
-/

namespace A231996.P2563234838466907203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231996.P2563234838466907203

/-! ## A231996.P9413092248993106555

`A231997(A000217(n+6)+n+1)`
-/

namespace A231996.P9413092248993106555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A000217 (n + 6) + (n : ℤ) + 1).toNat

end

end A231996.P9413092248993106555

/-!
# A231998: Number of (1+1) X (n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231998, there is no canonical definition to state claims against.
-/

/-! ## A231998.P16208604208296568663

`A231997(∑[n]+1)`
-/

namespace A231998.P16208604208296568663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231998.P16208604208296568663

/-! ## A231998.P13297975940765207884

`record[root(A231997(n+1), A059268(n))]`
-/

namespace A231998.P13297975940765207884
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231997 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231998.P13297975940765207884

/-! ## A231998.P1214276551389500751

`record[gcd(A061035(n+1), A231997(n+1))]`
-/

namespace A231998.P1214276551389500751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061035 (n + 1)) (A231997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231998.P1214276551389500751

/-! ## A231998.P7572900114305671557

`lcm(A020985(n), A231997(A000124(n)))`
-/

namespace A231998.P7572900114305671557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A231997 (A000124 n).toNat)

end

end A231998.P7572900114305671557

/-! ## A231998.P5583715304199526210

`A231997(A000124(n))%A127390(n+1)`
-/

namespace A231998.P5583715304199526210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231997 (A000124 n).toNat) (A127390 (n + 1))

end

end A231998.P5583715304199526210

/-!
# A231999: Number of (2+1)X(n+1) 0..1 arrays with no element having a strict majority of its horizontal and antidiagonal neighbors equal to one.

The programs for A231999, there is no canonical definition to state claims against.
-/

/-! ## A231999.P5126642874997015196

`A231997(∑[n+1]+2)`
-/

namespace A231999.P5126642874997015196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231999.P5126642874997015196

/-! ## A231999.P15549331922089972718

`record[gcd(A231997(n+3), A232006(n+1))]`
-/

namespace A231999.P15549331922089972718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A231997 (n + 3)) (A232006 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231999.P15549331922089972718

/-! ## A231999.P14938155357994367261

`A135560(2*n+5)*A231997(A252752(2*(n+2)))`
-/

namespace A231999.P14938155357994367261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (2 * n + 5) * A231997 (A252752 (2 * (n + 2))).toNat

end

end A231999.P14938155357994367261

/-! ## A231999.P12163670189304769447

`record[A231997(A133263(val(n+1, 2)+1))]`
-/

namespace A231999.P12163670189304769447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231997 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231999.P12163670189304769447

/-! ## A231999.P6776310916430194754

`record[A231997(n+3)/A102051(n)]`
-/

namespace A231999.P6776310916430194754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231997 (n + 3) : ℚ) / (A102051 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231999.P6776310916430194754

