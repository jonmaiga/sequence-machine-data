import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A320200: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 12*d^2 = n.

The programs for A320200, there is no canonical definition to state claims against.
-/

/-! ## A320200.P4179696986708741036

`A320201(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320200.P4179696986708741036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320201 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320200.P4179696986708741036

/-!
# A320201: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 13*d^2 = n.

The programs for A320201, there is no canonical definition to state claims against.
-/

/-! ## A320201.P3321049138181684626

`A252494(lcm(A047020(n+2), A320202(n)))`
-/

namespace A320201.P3321049138181684626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252494 (Int.lcm (A047020 (n + 2)) (A320202 n))

end

end A320201.P3321049138181684626

/-! ## A320201.P7228919436879431564

`A320202(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320201.P7228919436879431564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320202 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320201.P7228919436879431564

/-!
# A320202: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 14*d^2 = n.

The programs for A320202, there is no canonical definition to state claims against.
-/

/-! ## A320202.P16195879313864321547

`A167688(A339724(n+1))+A033717(n)`
-/

namespace A320202.P16195879313864321547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A339724 (n + 1)).toNat + A033717 n

end

end A320202.P16195879313864321547

/-! ## A320202.P14825276962631779368

`A280751(A289078(n+1))+A033717(n)`
-/

namespace A320202.P14825276962631779368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (A289078 (n + 1)).toNat + A033717 n

end

end A320202.P14825276962631779368

/-!
# A320203: Number of sets of nonempty words with a total of n letters over binary alphabet such that all letters occur at least once in the set.

The programs for A320203, there is no canonical definition to state claims against.
-/

/-! ## A320203.P3317188782042314364

`A319501(∑[n+2]+3)`
-/

namespace A320203.P3317188782042314364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A320203.P3317188782042314364

/-! ## A320203.P17084376716636045565

`A319501(A238531(n+3))+(2*n)%2`
-/

namespace A320203.P17084376716636045565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A238531 (n + 3)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A320203.P17084376716636045565

/-! ## A320203.P5964716692946480562

`C(A319501(A238531(n+3)), A017329(n)%2)`
-/

namespace A320203.P5964716692946480562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A319501 (A238531 (n + 3)).toNat).toNat (Int.tmod (A017329 n) 2).toNat

end

end A320203.P5964716692946480562

/-! ## A320203.P3891380634624905209

`A319501(A238531(n+3))+A048967(floor(n/(n+1)))`
-/

namespace A320203.P3891380634624905209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A238531 (n + 3)).toNat + A048967 ⌊(n : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A320203.P3891380634624905209

/-! ## A320203.P16043053451413265238

`A319501(A238531(n+3))+A299905(A064876(n))`
-/

namespace A320203.P16043053451413265238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A238531 (n + 3)).toNat + A299905 (A064876 n).toNat

end

end A320203.P16043053451413265238

/-!
# A320204: Number of sets of nonempty words with a total of n letters over ternary alphabet such that all letters occur at least once in the set.

The programs for A320204, there is no canonical definition to state claims against.
-/

/-! ## A320204.P7434224573160486832

`A319501(A167614(n+2))`
-/

namespace A320204.P7434224573160486832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A167614 (n + 2)).toNat

end

end A320204.P7434224573160486832

/-! ## A320204.P12189931203768432632

`A319501(A052905(n)+8)`
-/

namespace A320204.P12189931203768432632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A052905 n + 8).toNat

end

end A320204.P12189931203768432632

/-! ## A320204.P6110097112485006847

`A319501(eq[3, A002262(n)])`
-/

namespace A320204.P6110097112485006847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320204.P6110097112485006847

/-! ## A320204.P15905065056724405613

`A319501(eq[4, A002260(n+1)])`
-/

namespace A320204.P15905065056724405613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320204.P15905065056724405613

/-! ## A320204.P10264076833894095521

`A319501(eq[4, A245163(n+1)])`
-/

namespace A320204.P10264076833894095521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320204.P10264076833894095521

/-! ## A320204.P247494651048300450

`A319501(eq[1, A144328(n+1)-2])`
-/

namespace A320204.P247494651048300450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320204.P247494651048300450

/-! ## A320204.P17589561807205963300

`A319501(eq[2, A134868(n+1)-2])`
-/

namespace A320204.P17589561807205963300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320204.P17589561807205963300

/-! ## A320204.P2605908673053426412

`A319501(eq[2, A134868(n+1)/2])`
-/

namespace A320204.P2605908673053426412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320204.P2605908673053426412

/-! ## A320204.P14973933215747144451

`A319501(A167499(n+1)+n+1)`
-/

namespace A320204.P14973933215747144451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A167499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A320204.P14973933215747144451

/-!
# A320205: Number of sets of nonempty words with a total of n letters over quaternary alphabet such that all letters occur at least once in the set.

The programs for A320205, there is no canonical definition to state claims against.
-/

/-! ## A320205.P4638726993083935701

`A319501(A155212(n)+12)`
-/

namespace A320205.P4638726993083935701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A155212 n + 12).toNat

end

end A320205.P4638726993083935701

/-! ## A320205.P5890441866194433240

`A319501(eq[4, A002262(n)])`
-/

namespace A320205.P5890441866194433240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320205.P5890441866194433240

/-! ## A320205.P18346516485238010361

`A319501(eq[15, A180662(n)])`
-/

namespace A320205.P18346516485238010361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320205.P18346516485238010361

/-! ## A320205.P15885663426905151474

`A319501(eq[16, A059268(n)])`
-/

namespace A320205.P15885663426905151474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320205.P15885663426905151474

/-! ## A320205.P14719804987625473865

`A319501(eq[4, A144328(n+1)])`
-/

namespace A320205.P14719804987625473865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320205.P14719804987625473865

/-! ## A320205.P9066859378334622036

`A319501(eq[5, A002260(n+1)])`
-/

namespace A320205.P9066859378334622036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320205.P9066859378334622036

/-!
# A320206: Number of sets of nonempty words with a total of n letters over quinary alphabet such that all letters occur at least once in the set.

The programs for A320206, there is no canonical definition to state claims against.
-/

/-! ## A320206.P16416648579303890032

`A319501(∑[n+5]+15)`
-/

namespace A320206.P16416648579303890032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A320206.P16416648579303890032

/-! ## A320206.P10030884082337726021

`A319501(A077169(n+6))+A191681(n)%2`
-/

namespace A320206.P10030884082337726021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A077169 (n + 6)).toNat + Int.tmod (A191681 n) 2

end

end A320206.P10030884082337726021

/-! ## A320206.P8607803996184041632

`A001003(n)%2*A319501(A077169(n+6))`
-/

namespace A320206.P8607803996184041632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001003 n) 2 * A319501 (A077169 (n + 6)).toNat

end

end A320206.P8607803996184041632

/-! ## A320206.P8249721827280411537

`A319501(A077169(n+6))%A299872(n+5)`
-/

namespace A320206.P8249721827280411537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319501 (A077169 (n + 6)).toNat) (A299872 (n + 5))

end

end A320206.P8249721827280411537

/-! ## A320206.P17423972405507190349

`A319501(A077169(n+6))+A064403(n+1)%2`
-/

namespace A320206.P17423972405507190349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A077169 (n + 6)).toNat + Int.tmod (A064403 (n + 1)) 2

end

end A320206.P17423972405507190349

/-! ## A320206.P17087438727793031314

`A319501(A077169(n+6))+A190395(n+1)%2`
-/

namespace A320206.P17087438727793031314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A077169 (n + 6)).toNat + Int.tmod (A190395 (n + 1)) 2

end

end A320206.P17087438727793031314

/-! ## A320206.P1121638960646528169

`or(A277030(n+1)%2, A319501(A077169(n+6)))`
-/

namespace A320206.P1121638960646528169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A277030 (n + 1)) 2) (A319501 (A077169 (n + 6)).toNat)

end

end A320206.P1121638960646528169

/-! ## A320206.P5172396864240964372

`A319501(A077169(n+6))+A007691(2*(n+2))%2`
-/

namespace A320206.P5172396864240964372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A077169 (n + 6)).toNat + Int.tmod (A007691 (2 * (n + 2))) 2

end

end A320206.P5172396864240964372

/-!
# A320207: Number of sets of nonempty words with a total of n letters over senary alphabet such that all letters occur at least once in the set.

The programs for A320207, there is no canonical definition to state claims against.
-/

/-! ## A320207.P7116942588313451059

`A319501(eq[6, A002262(n)])`
-/

namespace A320207.P7116942588313451059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320207.P7116942588313451059

/-! ## A320207.P8932103019595365355

`A319501(eq[6, A144328(n+1)])`
-/

namespace A320207.P8932103019595365355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320207.P8932103019595365355

/-! ## A320207.P9794868732211716955

`A319501(eq[7, A002260(n+1)])`
-/

namespace A320207.P9794868732211716955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320207.P9794868732211716955

/-! ## A320207.P16651714656644735358

`A319501(eq[8, A245093(n+1)])`
-/

namespace A320207.P16651714656644735358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320207.P16651714656644735358

/-! ## A320207.P15714577764225329702

`A319501(eq[8, A308690(n+1)])`
-/

namespace A320207.P15714577764225329702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320207.P15714577764225329702

/-!
# A320208: Number of sets of nonempty words with a total of n letters over septenary alphabet such that all letters occur at least once in the set.

The programs for A320208, there is no canonical definition to state claims against.
-/

/-! ## A320208.P6875636524064985414

`A319501(eq[7, A002262(n)])`
-/

namespace A320208.P6875636524064985414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320208.P6875636524064985414

/-! ## A320208.P15981430749644538879

`A319501(eq[7, A144328(n+1)])`
-/

namespace A320208.P15981430749644538879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320208.P15981430749644538879

/-! ## A320208.P13888397835105901827

`A319501(eq[8, A002260(n+1)])`
-/

namespace A320208.P13888397835105901827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320208.P13888397835105901827

/-! ## A320208.P14176228530959739401

`A319501(eq[8, A134868(n+1)])`
-/

namespace A320208.P14176228530959739401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320208.P14176228530959739401

/-! ## A320208.P6088662492143484774

`A319501(eq[15, A245093(n+1)])`
-/

namespace A320208.P6088662492143484774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320208.P6088662492143484774

/-!
# A320209: Number of sets of nonempty words with a total of n letters over octonary alphabet such that all letters occur at least once in the set.

The programs for A320209, there is no canonical definition to state claims against.
-/

/-! ## A320209.P17719501759225982344

`A319501(eq[8, A002262(n)])`
-/

namespace A320209.P17719501759225982344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320209.P17719501759225982344

/-! ## A320209.P12533245596899283311

`A319501(A000096(n+7)+9)`
-/

namespace A320209.P12533245596899283311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A000096 (n + 7) + 9).toNat

end

end A320209.P12533245596899283311

/-! ## A320209.P14830883654056304236

`A319501(A000217(n+8)+8)`
-/

namespace A320209.P14830883654056304236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (A000217 (n + 8) + 8).toNat

end

end A320209.P14830883654056304236

/-! ## A320209.P9413647392210840403

`A319501(eq[8, A144328(n+1)])`
-/

namespace A320209.P9413647392210840403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320209.P9413647392210840403

/-! ## A320209.P4016441279806610014

`A319501(eq[9, A002260(n+1)])`
-/

namespace A320209.P4016441279806610014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320209.P4016441279806610014

/-! ## A320209.P4484684937818119926

`A319501(eq[9, A134868(n+1)])`
-/

namespace A320209.P4484684937818119926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320209.P4484684937818119926

/-! ## A320209.P4312984504187997878

`A319501(eq[13, A245093(n+1)])`
-/

namespace A320209.P4312984504187997878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320209.P4312984504187997878

/-!
# A320210: Number of sets of nonempty words with a total of n letters over nonary alphabet such that all letters occur at least once in the set.

The programs for A320210, there is no canonical definition to state claims against.
-/

/-! ## A320210.P17081571250578340741

`A319501(eq[9, A002262(n)])`
-/

namespace A320210.P17081571250578340741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320210.P17081571250578340741

/-! ## A320210.P8687007434040245403

`A319501(eq[9, A130270(n+1)])`
-/

namespace A320210.P8687007434040245403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320210.P8687007434040245403

/-! ## A320210.P7866613015210270367

`A319501(eq[9, A144328(n+1)])`
-/

namespace A320210.P7866613015210270367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320210.P7866613015210270367

/-! ## A320210.P241870881539239924

`A319501(eq[10, A002260(n+1)])`
-/

namespace A320210.P241870881539239924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320210.P241870881539239924

/-! ## A320210.P8111335498584689440

`A319501(eq[10, A134868(n+1)])`
-/

namespace A320210.P8111335498584689440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320210.P8111335498584689440

/-!
# A320211: Number of sets of nonempty words with a total of n letters over denary alphabet such that all letters occur at least once in the set.

The programs for A320211, there is no canonical definition to state claims against.
-/

/-! ## A320211.P16698271668240229472

`A319501(eq[10, A002262(n)])`
-/

namespace A320211.P16698271668240229472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320211.P16698271668240229472

/-!
# A320212: Number of binary n X n X n permutation arrays (all projections onto 2-dimensional faces yield the all-ones matrix) which yield the all-ones array when repeatedly changing a 0 with three 1 neighbors to 1.

The programs for A320212, there is no canonical definition to state claims against.
-/

/-! ## A320212.P4353999546590228566

`and(A132232(A279553(n+4)), A206592(2*n))`
-/

namespace A320212.P4353999546590228566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132232 (A279553 (n + 4)).toNat) (A206592 (2 * n))

end

end A320212.P4353999546590228566

/-!
# A320213: Number of multisets of nonempty words with a total of n letters over ternary alphabet such that all letters occur at least once in the multiset.

The programs for A320213, there is no canonical definition to state claims against.
-/

/-! ## A320213.P1112724023618216198

`A257740(A167614(n+2))`
-/

namespace A320213.P1112724023618216198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A167614 (n + 2)).toNat

end

end A320213.P1112724023618216198

/-! ## A320213.P2106871017452897426

`A257740(A052905(n)+8)`
-/

namespace A320213.P2106871017452897426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A052905 n + 8).toNat

end

end A320213.P2106871017452897426

/-! ## A320213.P18402809995196263297

`A257740(eq[3, A002262(n)])`
-/

namespace A320213.P18402809995196263297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320213.P18402809995196263297

/-! ## A320213.P8829670384437896847

`A257740(eq[4, A166692(n)])`
-/

namespace A320213.P8829670384437896847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320213.P8829670384437896847

/-! ## A320213.P8240500046576129093

`A257740(eq[8, A059268(n)])`
-/

namespace A320213.P8240500046576129093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320213.P8240500046576129093

/-! ## A320213.P4585709076323923028

`A257740(A167499(n+2)-2)`
-/

namespace A320213.P4585709076323923028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A167499 (n + 2) - 2).toNat

end

end A320213.P4585709076323923028

/-! ## A320213.P1393134407490148041

`A257740(eq[4, A002260(n+1)])`
-/

namespace A320213.P1393134407490148041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320213.P1393134407490148041

/-! ## A320213.P7291308658054535870

`A257740(eq[1, A144328(n+1)-2])`
-/

namespace A320213.P7291308658054535870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320213.P7291308658054535870

/-! ## A320213.P1643225628868741548

`A257740(eq[2, A134868(n+1)-2])`
-/

namespace A320213.P1643225628868741548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320213.P1643225628868741548

/-! ## A320213.P16515600878162555055

`A257740(eq[2, A134868(n+1)/2])`
-/

namespace A320213.P16515600878162555055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134868 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A320213.P16515600878162555055

/-!
# A320214: Number of multisets of nonempty words with a total of n letters over quaternary alphabet such that all letters occur at least once in the multiset.

The programs for A320214, there is no canonical definition to state claims against.
-/

/-! ## A320214.P3626955264658611800

`A257740(A155212(n)+12)`
-/

namespace A320214.P3626955264658611800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A155212 n + 12).toNat

end

end A320214.P3626955264658611800

/-! ## A320214.P10607603908894061238

`A257740(A056000(n)+14)`
-/

namespace A320214.P10607603908894061238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (A056000 n + 14).toNat

end

end A320214.P10607603908894061238

/-! ## A320214.P14653423689527419448

`A257740(eq[4, A002262(n)])`
-/

namespace A320214.P14653423689527419448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320214.P14653423689527419448

/-! ## A320214.P17346544798055404734

`A257740(eq[8, A166692(n)])`
-/

namespace A320214.P17346544798055404734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320214.P17346544798055404734

/-! ## A320214.P18269803297702661298

`A257740(eq[16, A059268(n)])`
-/

namespace A320214.P18269803297702661298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320214.P18269803297702661298

/-! ## A320214.P6461172328354363330

`A257740(eq[4, A144328(n+1)])`
-/

namespace A320214.P6461172328354363330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320214.P6461172328354363330

/-! ## A320214.P12888861550179336635

`A257740(eq[5, A002260(n+1)])`
-/

namespace A320214.P12888861550179336635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320214.P12888861550179336635

/-! ## A320214.P2385005171151071340

`A257740(eq[5, A134868(n+1)])`
-/

namespace A320214.P2385005171151071340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320214.P2385005171151071340

/-!
# A320215: Number of multisets of nonempty words with a total of n letters over quinary alphabet such that all letters occur at least once in the multiset.

The programs for A320215, there is no canonical definition to state claims against.
-/

/-! ## A320215.P8781127601015320681

`A257740(∑[n+5]+15)`
-/

namespace A320215.P8781127601015320681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A320215.P8781127601015320681

/-!
# A320216: Number of multisets of nonempty words with a total of n letters over senary alphabet such that all letters occur at least once in the multiset.

The programs for A320216, there is no canonical definition to state claims against.
-/

/-! ## A320216.P15660385919947170996

`A257740(eq[6, A002262(n)])`
-/

namespace A320216.P15660385919947170996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320216.P15660385919947170996

/-! ## A320216.P12139910569487614787

`A257740(eq[6, A144328(n+1)])`
-/

namespace A320216.P12139910569487614787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320216.P12139910569487614787

/-! ## A320216.P17317220037784370665

`A257740(eq[7, A002260(n+1)])`
-/

namespace A320216.P17317220037784370665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320216.P17317220037784370665

/-! ## A320216.P15569883029799558324

`A257740(eq[7, A134868(n+1)])`
-/

namespace A320216.P15569883029799558324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320216.P15569883029799558324

/-! ## A320216.P2108567045735645995

`A257740(eq[8, A245093(n+1)])`
-/

namespace A320216.P2108567045735645995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320216.P2108567045735645995

/-!
# A320217: Number of multisets of nonempty words with a total of n letters over septenary alphabet such that all letters occur at least once in the multiset.

The programs for A320217, there is no canonical definition to state claims against.
-/

/-! ## A320217.P14718918658363772580

`A257740(eq[7, A002262(n)])`
-/

namespace A320217.P14718918658363772580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320217.P14718918658363772580

/-! ## A320217.P12336735148255970017

`A257740(eq[7, A144328(n+1)])`
-/

namespace A320217.P12336735148255970017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320217.P12336735148255970017

/-! ## A320217.P15797348739930678863

`A257740(eq[8, A002260(n+1)])`
-/

namespace A320217.P15797348739930678863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320217.P15797348739930678863

/-! ## A320217.P10539767220300854295

`A257740(eq[8, A134868(n+1)])`
-/

namespace A320217.P10539767220300854295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320217.P10539767220300854295

/-! ## A320217.P17980956742348410800

`A257740(eq[15, A245093(n+1)])`
-/

namespace A320217.P17980956742348410800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320217.P17980956742348410800

/-!
# A320218: Number of multisets of nonempty words with a total of n letters over octonary alphabet such that all letters occur at least once in the multiset.

The programs for A320218, there is no canonical definition to state claims against.
-/

/-! ## A320218.P2284097357419930133

`A257740(eq[8, A002262(n)])`
-/

namespace A320218.P2284097357419930133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320218.P2284097357419930133

/-! ## A320218.P16088171425720629423

`A257740(eq[8, A130270(n+1)])`
-/

namespace A320218.P16088171425720629423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320218.P16088171425720629423

/-! ## A320218.P10917955952600104082

`A257740(eq[8, A144328(n+1)])`
-/

namespace A320218.P10917955952600104082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320218.P10917955952600104082

/-! ## A320218.P4315905843095973037

`A257740(eq[9, A002260(n+1)])`
-/

namespace A320218.P4315905843095973037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320218.P4315905843095973037

/-! ## A320218.P3932787788679745062

`A257740(eq[9, A134868(n+1)])`
-/

namespace A320218.P3932787788679745062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320218.P3932787788679745062

/-!
# A320219: Number of multisets of nonempty words with a total of n letters over nonary alphabet such that all letters occur at least once in the multiset.

The programs for A320219, there is no canonical definition to state claims against.
-/

/-! ## A320219.P3523359856599589330

`A257740(eq[9, A002262(n)])`
-/

namespace A320219.P3523359856599589330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320219.P3523359856599589330

/-! ## A320219.P13389211070395681048

`A257740(eq[9, A130270(n+1)])`
-/

namespace A320219.P13389211070395681048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320219.P13389211070395681048

/-! ## A320219.P8046447853319931695

`A257740(eq[10, A002260(n+1)])`
-/

namespace A320219.P8046447853319931695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320219.P8046447853319931695

/-! ## A320219.P15433770681162106211

`A257740(eq[10, A134868(n+1)])`
-/

namespace A320219.P15433770681162106211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320219.P15433770681162106211

/-! ## A320219.P8165389187793074461

`A257740(eq[3, sqrt(A144328(n+1))])`
-/

namespace A320219.P8165389187793074461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A144328 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A320219.P8165389187793074461

/-!
# A320220: Number of multisets of nonempty words with a total of n letters over denary alphabet such that all letters occur at least once in the multiset.

The programs for A320220, there is no canonical definition to state claims against.
-/

/-! ## A320220.P12753813244752478112

`A257740(eq[10, A002262(n)])`
-/

namespace A320220.P12753813244752478112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320220.P12753813244752478112

/-! ## A320220.P5049523907050222607

`A257740(eq[11, A002260(n+1)])`
-/

namespace A320220.P5049523907050222607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257740 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320220.P5049523907050222607

/-!
# A320221: Irregular triangle where T(n,k) is the number of unlabeled series-reduced rooted trees with n leaves in which every leaf is at height k, (n>=1, min(1,n-1) <= k <= log_2(n)).

The programs for A320221, there is no canonical definition to state claims against.
-/

/-! ## A320221.P12160831355474941665

`A320179(lt[A358842(n), A320179(n+1)]+1)`
-/

namespace A320221.P12160831355474941665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A320221.P12160831355474941665

/-!
# A320222: Number of unlabeled rooted trees with n nodes in which the non-leaf branches directly under any given node are all equal.

The programs for A320222, there is no canonical definition to state claims against.
-/

/-! ## A320222.P7056152641907341313

`A084978(A028310(n)+1)-A014668(n+1)`
-/

namespace A320222.P7056152641907341313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084978 (A028310 n + 1).toNat - A014668 (n + 1)

end

end A320222.P7056152641907341313

/-! ## A320222.P1811657299349076594

`A084978(n+1)+A000007(n)-A014668(n+1)`
-/

namespace A320222.P1811657299349076594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084978 (n + 1) + (A000007 n - A014668 (n + 1))

end

end A320222.P1811657299349076594

/-! ## A320222.P7239625432855177882

`A084978(n+1)-A014668(n+1)%A126656(n+1)`
-/

namespace A320222.P7239625432855177882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084978 (n + 1) - Int.tmod (A014668 (n + 1)) (A126656 (n + 1))

end

end A320222.P7239625432855177882

/-! ## A320222.P17847710952421593577

`A028310(A084978(n+1)%A014668(n+1))`
-/

namespace A320222.P17847710952421593577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A084978 (n + 1)) (A014668 (n + 1))).toNat

end

end A320222.P17847710952421593577

/-! ## A320222.P5301215025297332077

`A028310(A084978(n+1)-A163313(∑[n+1]))`
-/

namespace A320222.P5301215025297332077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A084978 (n + 1) - A163313 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A320222.P5301215025297332077

/-!
# A320223: First occurrence of the n-th prime in A075019.

The programs for A320223, there is no canonical definition to state claims against.
-/

/-! ## A320223.P9587128941842671704

`A329131(A153711(n+1))`
-/

namespace A320223.P9587128941842671704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329131 (A153711 (n + 1)).toNat

end

end A320223.P9587128941842671704

/-!
# A320224: a(1) = 1; a(n > 1) = Sum_{k = 1..n-1} Sum_{d|k, d < k} a(d).

The programs for A320224, there is no canonical definition to state claims against.
-/

/-! ## A320224.P8737090028865452610

`Δ[A078346(A028310(n))]+C(2, n+2)`
-/

namespace A320224.P8737090028865452610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078346 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A320224.P8737090028865452610

/-! ## A320224.P1687177838786126560

`A000007(n)+Δ[A078346(A028310(n))]`
-/

namespace A320224.P1687177838786126560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078346 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A320224.P1687177838786126560

/-! ## A320224.P6491115179399799779

`A078346(n+1)+A000007(n)-A078346(A028310(n))`
-/

namespace A320224.P6491115179399799779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078346 (n + 1) + (A000007 n - A078346 (A028310 n).toNat)

end

end A320224.P6491115179399799779

/-! ## A320224.P12322743190418708044

`Δ[A078346(A028310(n))]+A261566(n)%2`
-/

namespace A320224.P12322743190418708044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078346 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A261566 n) 2

end

end A320224.P12322743190418708044

/-! ## A320224.P13162590273343866539

`Δ[A078346(A028310(n))]+A101682(n)%2`
-/

namespace A320224.P13162590273343866539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078346 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A101682 n) 2

end

end A320224.P13162590273343866539

/-!
# A320225: a(1) = 1; a(n > 1) = Sum_{k = 1..n} Sum_{d|k, d < k} a(d).

The programs for A320225, there is no canonical definition to state claims against.
-/

/-! ## A320225.P1350805990735347607

`A000194(C(A345139(n+1), 2)+1)`
-/

namespace A320225.P1350805990735347607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.choose (A345139 (n + 1)).toNat 2 + 1)

end

end A320225.P1350805990735347607

/-! ## A320225.P18281185368529689261

`ceil(A003056(A345139(n+1)²)/2)`
-/

namespace A320225.P18281185368529689261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 (A345139 (n + 1) ^ 2).toNat : ℚ) / 2⌉

end

end A320225.P18281185368529689261

/-! ## A320225.P803665383480565921

`A110654(A003056(A345139(n+1)²))`
-/

namespace A320225.P803665383480565921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A003056 (A345139 (n + 1) ^ 2).toNat).toNat

end

end A320225.P803665383480565921

/-! ## A320225.P10759740741866084662

`A351846(A345139(n+1)*A345139(n+1))`
-/

namespace A320225.P10759740741866084662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A345139 (n + 1) * A345139 (n + 1)).toNat

end

end A320225.P10759740741866084662

/-!
# A320226: Number of integer partitions of n whose non-1 parts are all equal.

The programs for A320226, there is no canonical definition to state claims against.
-/

/-! ## A320226.P10357433934624860996

`∑[∏{e}[n, #+1]]-n`
-/

namespace A320226.P10357433934624860996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A320226.P10357433934624860996

/-! ## A320226.P11057110572036912498

`∑[∑{d}[n, floor(atan(#))]]+1`
-/

namespace A320226.P11057110572036912498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (d : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320226.P11057110572036912498

/-! ## A320226.P6965801909273219321

`1-∑[∑{d}[n, -1%#]]`
-/

namespace A320226.P6965801909273219321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (-1) (d : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320226.P6965801909273219321

/-! ## A320226.P8370880677363413631

`∑[∑{d}[n, (n+1)%#]]+1`
-/

namespace A320226.P8370880677363413631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1) % d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320226.P8370880677363413631

/-! ## A320226.P10868500913996280269

`∑[∑{d}[n, 1-C(#, n)]]+1`
-/

namespace A320226.P10868500913996280269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (Nat.choose d n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320226.P10868500913996280269

/-! ## A320226.P12103469673398182258

`∑[∑{d}[n, ceil(acot(#))]]+1-n`
-/

namespace A320226.P12103469673398182258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n : ℤ))

end

end A320226.P12103469673398182258

/-! ## A320226.P12661310079903056881

`A054519(n)-n`
-/

namespace A320226.P12661310079903056881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - (n : ℤ)

end

end A320226.P12661310079903056881

/-! ## A320226.P2534871353977313016

`∑[A032741(n)]+1`
-/

namespace A320226.P2534871353977313016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A320226.P2534871353977313016

/-! ## A320226.P7783711940000579013

`Δ[A389737(n)]-n`
-/

namespace A320226.P7783711940000579013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A320226.P7783711940000579013

/-! ## A320226.P8499131892521170622

`A006218(n)+1-n`
-/

namespace A320226.P8499131892521170622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (1 - (n : ℤ))

end

end A320226.P8499131892521170622

/-!
# A320228: Distribute the primes into groups in ascending order, with the n-th group having prime(n) elements. Then a(n) is the sum of the numbers in the n-th group times the number of elements in the group.

The programs for A320228, there is no canonical definition to state claims against.
-/

/-! ## A320228.P12443175590728770353

`A000040(n+1)*A034958(n+1)`
-/

namespace A320228.P12443175590728770353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A034958 (n + 1)

end

end A320228.P12443175590728770353

/-! ## A320228.P11796576290549393122

`A008578(n+2)*A034958(n+1)`
-/

namespace A320228.P11796576290549393122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A034958 (n + 1)

end

end A320228.P11796576290549393122

/-! ## A320228.P5884891916231962682

`p?[A000961(n+1)]*A034958(n+1)`
-/

namespace A320228.P5884891916231962682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A034958 (n + 1)

end

end A320228.P5884891916231962682

/-! ## A320228.P12508074959322701107

`p?[(n+1)*A001222(n+1)]*A034958(n+1)`
-/

namespace A320228.P12508074959322701107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A034958 (n + 1)

end

end A320228.P12508074959322701107

/-! ## A320228.P2864047575309721887

`(A007504(n+1)-A007504(n))*A034958(n+1)`
-/

namespace A320228.P2864047575309721887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A034958 (n + 1)

end

end A320228.P2864047575309721887

/-! ## A320228.P985289632307880604

`(A034956(n+1)-A034957(n+1))*A034958(n+1)`
-/

namespace A320228.P985289632307880604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 1) - A034957 (n + 1)) * A034958 (n + 1)

end

end A320228.P985289632307880604

/-! ## A320228.P4007968701491751530

`(A034960(n+1)-A034959(n+1))*A034958(n+1)`
-/

namespace A320228.P4007968701491751530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034960 (n + 1) - A034959 (n + 1)) * A034958 (n + 1)

end

end A320228.P4007968701491751530

/-! ## A320228.P1458914745321247785

`(A014284(n+2)-A014284(n+1))*A034958(n+1)`
-/

namespace A320228.P1458914745321247785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014284 (n + 2) - A014284 (n + 1)) * A034958 (n + 1)

end

end A320228.P1458914745321247785

/-! ## A320228.P102490690577132311

`p?[A045965(n+1)]*A034958(n+1)`
-/

namespace A320228.P102490690577132311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A034958 (n + 1)

end

end A320228.P102490690577132311

/-! ## A320228.P18289144394340985813

`A034958(n+1)*A344891(A343809(n+1))`
-/

namespace A320228.P18289144394340985813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034958 (n + 1) * A344891 (A343809 (n + 1)).toNat

end

end A320228.P18289144394340985813

/-! ## A320228.P15401744633869165207

`p?[A090705(n+1)]*A034958(n+1)`
-/

namespace A320228.P15401744633869165207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A034958 (n + 1)

end

end A320228.P15401744633869165207

/-! ## A320228.P8099419166502277489

`A000040(n+1)*Δ[A007504(A007504(n))]`
-/

namespace A320228.P8099419166502277489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A320228.P8099419166502277489

/-!
# A320230: Matula-Goebel numbers of rooted trees in which the non-leaf branches directly under any given node are all equal.

The programs for A320230, there is no canonical definition to state claims against.
-/

/-! ## A320230.P4321560406952591193

`eq[A011592(n²), A344180(A182256(n))]`
-/

namespace A320230.P4321560406952591193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011592 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (A182256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A320230.P4321560406952591193

/-! ## A320230.P17547506577122954400

`A324109(n+1)+A185284(A000700(n))`
-/

namespace A320230.P17547506577122954400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1) + A185284 (A000700 n).toNat

end

end A320230.P17547506577122954400

/-! ## A320230.P6744614773688941794

`A324109(n+1)%A002762(n)`
-/

namespace A320230.P6744614773688941794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324109 (n + 1)) (A002762 n)

end

end A320230.P6744614773688941794

/-! ## A320230.P17284524473043135293

`record[gcd(A116512(n+1), A151933(n))]`
-/

namespace A320230.P17284524473043135293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116512 (n + 1)) (A151933 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320230.P17284524473043135293

/-! ## A320230.P1032942225149847437

`A152607(n+1)%2*A324109(n+1)`
-/

namespace A320230.P1032942225149847437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152607 (n + 1)) 2 * A324109 (n + 1)

end

end A320230.P1032942225149847437

/-!
# A320233: Expansion of Product_{k=1..7} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320233, there is no canonical definition to state claims against.
-/

/-! ## A320233.P16861034355322670399

`A320234(A187829(n+1))-Δ[A320067(n)]`
-/

namespace A320233.P16861034355322670399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320233.P16861034355322670399

/-! ## A320233.P17404914479493073408

`A320234(A187829(n+1))-Δ[A320247(n)]`
-/

namespace A320233.P17404914479493073408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320233.P17404914479493073408

/-! ## A320233.P6319735682887559432

`A320246(n)-A120659(A120647(n+1))-A309659(n+2)`
-/

namespace A320233.P6319735682887559432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320246 n - A120659 (A120647 (n + 1)).toNat - A309659 (n + 2)

end

end A320233.P6319735682887559432

/-! ## A320233.P2910443865090586573

`A320247(n)-A120659(A120647(n+1))-A309659(n+2)`
-/

namespace A320233.P2910443865090586573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320247 n - A120659 (A120647 (n + 1)).toNat - A309659 (n + 2)

end

end A320233.P2910443865090586573

/-! ## A320233.P15792323481664674176

`A320067(n)-A014083(A006897(n))`
-/

namespace A320233.P15792323481664674176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - A014083 (A006897 n).toNat

end

end A320233.P15792323481664674176

/-!
# A320234: Expansion of Product_{k=1..8} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320234, there is no canonical definition to state claims against.
-/

/-! ## A320234.P10574895051732586394

`A320241(A187829(n+1))-Δ[A320067(n)]`
-/

namespace A320234.P10574895051732586394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320241 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320234.P10574895051732586394

/-! ## A320234.P4137053118683076144

`A320241(A187829(n+1))-Δ[A320247(n)]`
-/

namespace A320234.P4137053118683076144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320241 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320234.P4137053118683076144

/-! ## A320234.P14948457473687036923

`A118759(A320067(n)-A309659(n))-A309659(n+1)`
-/

namespace A320234.P14948457473687036923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A320067 n - A309659 n).toNat - A309659 (n + 1)

end

end A320234.P14948457473687036923

/-! ## A320234.P13398117135048670807

`A118759(A320242(n))-A309659(n)-A309659(n+1)`
-/

namespace A320234.P13398117135048670807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A320242 n).toNat - A309659 n - A309659 (n + 1)

end

end A320234.P13398117135048670807

/-! ## A320234.P8505185985345527878

`A118759(A320246(n)-A309659(n))-A309659(n+1)`
-/

namespace A320234.P8505185985345527878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A320246 n - A309659 n).toNat - A309659 (n + 1)

end

end A320234.P8505185985345527878

/-!
# A320235: G.f.: Product_{k>=1, j>=1} (1 + x^(k*j))^2.

The programs for A320235, there is no canonical definition to state claims against.
-/

/-! ## A320235.P6790660118331001985

`A227615(n)-A094192(A000088(n))`
-/

namespace A320235.P6790660118331001985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227615 n - A094192 (A000088 n).toNat

end

end A320235.P6790660118331001985

/-! ## A320235.P5837224071616909326

`xor(A007895(A307552(n+1)), A132977(n))`
-/

namespace A320235.P5837224071616909326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007895 (A307552 (n + 1)).toNat) (A132977 n)

end

end A320235.P5837224071616909326

/-!
# A320236: G.f.: Product_{k>=1, j>=1} 1/(1 - x^(k*j))^2.

The programs for A320236, there is no canonical definition to state claims against.
-/

/-! ## A320236.P8008187691392969210

`A225926(A225942(n))+A225865(n)`
-/

namespace A320236.P8008187691392969210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225926 (A225942 n).toNat + A225865 n

end

end A320236.P8008187691392969210

/-! ## A320236.P17074016113734279429

`A073188(A073986(n+1))+A025826(n)`
-/

namespace A320236.P17074016113734279429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A073986 (n + 1)).toNat + A025826 n

end

end A320236.P17074016113734279429

/-! ## A320236.P11820974083402956938

`A032281(n+9)+record[A007439(n+1)-A032244(n)]`
-/

namespace A320236.P11820974083402956938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007439 (n + 1) - A032244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032281 (n + 9) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320236.P11820974083402956938

/-!
# A320237: G.f.: Product_{k>=1, j>=1} ((1 + x^(k*j)) / (1 - x^(k*j)))^2.

The programs for A320237, there is no canonical definition to state claims against.
-/

/-! ## A320237.P7349195443702939757

`A003963(∑[∑[4*n]²]+2)`
-/

namespace A320237.P7349195443702939757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A320237.P7349195443702939757

/-! ## A320237.P402576069684371531

`A001793(n+1)-A060130(A027283(n+1))`
-/

namespace A320237.P402576069684371531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1) - A060130 (A027283 (n + 1)).toNat

end

end A320237.P402576069684371531

/-!
# A320238: G.f.: Product_{k>=1, j>=1} (1 + x^(k*j)) / (1 - x^(k*j))^2.

The programs for A320238, there is no canonical definition to state claims against.
-/

/-! ## A320238.P7028919436589444518

`A360628(round(5^(n/2)))`
-/

namespace A320238.P7028919436589444518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360628 (SequenceMachineLib.roundAway ((5 : ℝ) ^ ((n : ℚ) / 2 : ℝ))).toNat

end

end A320238.P7028919436589444518

/-! ## A320238.P570576429145546910

`A356065(∑[A000219(n)])`
-/

namespace A320238.P570576429145546910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320238.P570576429145546910

/-!
# A320239: Expansion of theta_3(q) * theta_3(q^3) * theta_3(q^5), where theta_3() is the Jacobi theta function.

The programs for A320239, there is no canonical definition to state claims against.
-/

/-! ## A320239.P11324400001309151595

`C(A033727(n), A193592(A006927(n)))`
-/

namespace A320239.P11324400001309151595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A033727 n).toNat (A193592 (A006927 n).toNat).toNat

end

end A320239.P11324400001309151595

/-! ## A320239.P3922055988767563733

`A033727(A185255(2*n))*A033727(n)`
-/

namespace A320239.P3922055988767563733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033727 (A185255 (2 * n)).toNat * A033727 n

end

end A320239.P3922055988767563733

/-! ## A320239.P13279166937279810274

`lcm(A033727(n), A190487(A033705(n+1)))`
-/

namespace A320239.P13279166937279810274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033727 n) (A190487 (A033705 (n + 1)).toNat)

end

end A320239.P13279166937279810274

/-! ## A320239.P2211669530678855219

`A033727(n)*A334925(A154921(n))`
-/

namespace A320239.P2211669530678855219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033727 n * A334925 (A154921 n).toNat

end

end A320239.P2211669530678855219

/-! ## A320239.P2156635671727728305

`A033727(n)%A317190(A002731(n+1))`
-/

namespace A320239.P2156635671727728305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033727 n) (A317190 (A002731 (n + 1)).toNat)

end

end A320239.P2156635671727728305

/-!
# A320241: Expansion of Product_{k=1..9} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320241, there is no canonical definition to state claims against.
-/

/-! ## A320241.P16869566355302403218

`A320067(n)-(A309659(n)+A006925(A320253(n)))`
-/

namespace A320241.P16869566355302403218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - (A309659 n + A006925 (A320253 n).toNat)

end

end A320241.P16869566355302403218

/-! ## A320241.P16896950834728950796

`A320246(n)-(A309659(n)+A006925(A320253(n)))`
-/

namespace A320241.P16896950834728950796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320246 n - (A309659 n + A006925 (A320253 n).toNat)

end

end A320241.P16896950834728950796

/-! ## A320241.P9571194704686330765

`A320247(n)-(A309659(n)+A006925(A320253(n)))`
-/

namespace A320241.P9571194704686330765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320247 n - (A309659 n + A006925 (A320253 n).toNat)

end

end A320241.P9571194704686330765

/-! ## A320241.P6749953357004597689

`A320248(n)-(A309659(n)+A006925(A320253(n)))`
-/

namespace A320241.P6749953357004597689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320248 n - (A309659 n + A006925 (A320253 n).toNat)

end

end A320241.P6749953357004597689

/-! ## A320241.P17136686803323530298

`A320067(n)-A096528(A176561(n))-A309659(n)`
-/

namespace A320241.P17136686803323530298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - A096528 (A176561 n).toNat - A309659 n

end

end A320241.P17136686803323530298

/-!
# A320242: Expansion of Product_{k=1..10} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320242, there is no canonical definition to state claims against.
-/

/-! ## A320242.P6109478281705293113

`A320067(n)-A096528(A176561(n))`
-/

namespace A320242.P6109478281705293113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - A096528 (A176561 n).toNat

end

end A320242.P6109478281705293113

/-! ## A320242.P4816674879762151282

`A320067(n)-A006925(A320253(n))`
-/

namespace A320242.P4816674879762151282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - A006925 (A320253 n).toNat

end

end A320242.P4816674879762151282

/-! ## A320242.P9555529733246646054

`A320246(n)-A006925(A320253(n))`
-/

namespace A320242.P9555529733246646054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320246 n - A006925 (A320253 n).toNat

end

end A320242.P9555529733246646054

/-! ## A320242.P1969343034089052763

`A320247(n)-A006925(A320253(n))`
-/

namespace A320242.P1969343034089052763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320247 n - A006925 (A320253 n).toNat

end

end A320242.P1969343034089052763

/-! ## A320242.P18120789628588072794

`A320248(n)-A006925(A320253(n))`
-/

namespace A320242.P18120789628588072794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320248 n - A006925 (A320253 n).toNat

end

end A320242.P18120789628588072794

/-!
# A320243: Number of integer solutions (a_1, a_2, ... , a_8) to the equation a_1^2 + 2*a_2^2 + ... + 8*a_8^2 = 3*n.

The programs for A320243, there is no canonical definition to state claims against.
-/

/-! ## A320243.P16253638008129977649

`A320234(3*n)`
-/

namespace A320243.P16253638008129977649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (3 * n)

end

end A320243.P16253638008129977649

/-! ## A320243.P12140541443683498286

`A320234(A008486(n))-A000007(n)`
-/

namespace A320243.P12140541443683498286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A008486 n).toNat - A000007 n

end

end A320243.P12140541443683498286

/-! ## A320243.P2588853894076108973

`A320234(A008486(n))/A054977(n)`
-/

namespace A320243.P2588853894076108973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320234 (A008486 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A320243.P2588853894076108973

/-! ## A320243.P8926995040117955377

`A320234(A008486(n))^A062157(n)²`
-/

namespace A320243.P8926995040117955377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320234 (A008486 n).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A320243.P8926995040117955377

/-! ## A320243.P1950584377378432181

`A320234(A008486(n))-A000035(A103517(n))`
-/

namespace A320243.P1950584377378432181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A008486 n).toNat - A000035 (A103517 n).toNat

end

end A320243.P1950584377378432181

/-! ## A320243.P742334201554932711

`A320234(A008486(n))-A010873(A145154(n))`
-/

namespace A320243.P742334201554932711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A008486 n).toNat - A010873 (A145154 n).toNat

end

end A320243.P742334201554932711

/-! ## A320243.P6853465142133712558

`A320234(A008486(n))^A001222(A008578(n+1))`
-/

namespace A320243.P6853465142133712558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320234 (A008486 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A320243.P6853465142133712558

/-! ## A320243.P16881256735140967542

`A320234(A008486(n))-A000035(A008574(n))`
-/

namespace A320243.P16881256735140967542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A008486 n).toNat - A000035 (A008574 n).toNat

end

end A320243.P16881256735140967542

/-! ## A320243.P2489493028571805693

`A320234(A008486(n))-A000035(A320234(n))`
-/

namespace A320243.P2489493028571805693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320234 (A008486 n).toNat - A000035 (A320234 n).toNat

end

end A320243.P2489493028571805693

/-!
# A320244: G.f.: Product_{k>=1, j>=1} (1 + x^(k*j))^2 / (1 - x^(k*j)).

The programs for A320244, there is no canonical definition to state claims against.
-/

/-! ## A320244.P14386222999037266462

`A145133(n)+A077462(A000165(n))`
-/

namespace A320244.P14386222999037266462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145133 n + A077462 (A000165 n).toNat

end

end A320244.P14386222999037266462

/-! ## A320244.P7971066067609766497

`A221108(A002905(n+1))+A036289(n)`
-/

namespace A320244.P7971066067609766497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221108 (A002905 (n + 1)).toNat + A036289 n

end

end A320244.P7971066067609766497

/-!
# A320246: Expansion of Product_{k=1..12} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320246, there is no canonical definition to state claims against.
-/

/-! ## A320246.P6440220097798547930

`A320067(n)-A035171(A320067(2*n+1))`
-/

namespace A320246.P6440220097798547930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - A035171 (A320067 (2 * n + 1)).toNat

end

end A320246.P6440220097798547930

/-!
# A320247: Expansion of Product_{k=1..16} theta_3(q^k), where theta_3() is the Jacobi theta function.

The programs for A320247, there is no canonical definition to state claims against.
-/

/-! ## A320247.P6223601517793643272

`A320067(n)-A014486(A185284(2*n+3))`
-/

namespace A320247.P6223601517793643272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320067 n - A014486 (A185284 (2 * n + 3)).toNat

end

end A320247.P6223601517793643272

/-!
# A320249: Numbers not of the form [p^c] + [q^c] + [r^c] + [s^c] + [t^c] where p, q, r, s, and t are prime, c = 41/20 = 2.05, and [...] is the floor function.

The programs for A320249, there is no canonical definition to state claims against.
-/

/-! ## A320249.P1922888224413922021

`lt[A240851(n), A008587(A248423(n))]`
-/

namespace A320249.P1922888224413922021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A248423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320249.P1922888224413922021

/-! ## A320249.P628403318356779466

`lt[A240851(n+1), A008588(A248423(n))]`
-/

namespace A320249.P628403318356779466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A248423 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320249.P628403318356779466

/-! ## A320249.P14051102302693087243

`lt[A000041(A289205(n+1)), A237871(n+1)]`
-/

namespace A320249.P14051102302693087243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A289205 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320249.P14051102302693087243

/-! ## A320249.P6699734906652442232

`lt[A279216(A355319(2*n+5)), A006261(n)]`
-/

namespace A320249.P6699734906652442232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279216 (A355319 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320249.P6699734906652442232

/-! ## A320249.P11410769674081846705

`lt[A355319(2*n+5), A000196(A301299(n))]`
-/

namespace A320249.P11410769674081846705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355319 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A301299 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A320249.P11410769674081846705

/-!
# A320250: Expansion of Product_{k>=1} (1 + x^k)^(A048272(k)).

The programs for A320250, there is no canonical definition to state claims against.
-/

/-! ## A320250.P17893402199525271145

`A061017(n+1)-A001221(A018022(n))`
-/

namespace A320250.P17893402199525271145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1) - A001221 (A018022 n).toNat

end

end A320250.P17893402199525271145

/-! ## A320250.P4126345104437086795

`A334152(or(10, A133263(n)))`
-/

namespace A320250.P4126345104437086795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334152 (Int.lor 10 (A133263 n)).toNat

end

end A320250.P4126345104437086795

/-! ## A320250.P1320102000491635997

`A282355(or(8, A337143(n+1)))`
-/

namespace A320250.P1320102000491635997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (Int.lor 8 (A337143 (n + 1))).toNat

end

end A320250.P1320102000491635997

/-! ## A320250.P16217493373175142628

`A060130(A000586(n+4)^n)`
-/

namespace A320250.P16217493373175142628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A000586 (n + 4) ^ n).toNat

end

end A320250.P16217493373175142628

/-! ## A320250.P7863765025941814661

`A363226(n)+A080764(A133572(n+2))`
-/

namespace A320250.P7863765025941814661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363226 n + A080764 (A133572 (n + 2)).toNat

end

end A320250.P7863765025941814661

/-!
# A320251: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of 1/(1 - Sum_{j>=1} j^k*x^j).

The programs for A320251, there is no canonical definition to state claims against.
-/

/-! ## A320251.P4764712679209362584

`A376775(A326322(n))`
-/

namespace A320251.P4764712679209362584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376775 (A326322 n).toNat

end

end A320251.P4764712679209362584

/-! ## A320251.P9223691324549134539

`A326322(C(A326322(n), 13)+n)`
-/

namespace A320251.P9223691324549134539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 (Nat.choose (A326322 n).toNat 13 + n)

end

end A320251.P9223691324549134539

/-! ## A320251.P2309009513756480651

`A326322(n)-A326332(A326322(n)+2)`
-/

namespace A320251.P2309009513756480651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326322 n - A326332 (A326322 n + 2).toNat

end

end A320251.P2309009513756480651

/-!
# A320252: Numbers with prime factorization Product_{k=1..w} prime(i_k) ^ e_k (where w = A001221(n) and prime(i) denotes the i-th prime number) such that i_k <> e_k for k = 1..w and { i_1, ..., i_w } = { e_1, ..., e_w }.

The programs for A320252, there is no canonical definition to state claims against.
-/

/-! ## A320252.P2676696751444350026

`∩[A109297(n+1), A120511(n+1)]`
-/

namespace A320252.P2676696751444350026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320252.P2676696751444350026

/-! ## A320252.P3728440951100244307

`∩[A109297(n+1), A329947(n+1)]`
-/

namespace A320252.P3728440951100244307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320252.P3728440951100244307

/-!
# A320253: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 + k - Sum_{j=1..k} exp(j*x)).

The programs for A320253, there is no canonical definition to state claims against.
-/

/-! ## A320253.P17631675383980550431

`A282720(A306024(n)%A073521(n+1))`
-/

namespace A320253.P17631675383980550431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282720 (Int.tmod (A306024 n) (A073521 (n + 1))).toNat

end

end A320253.P17631675383980550431

/-! ## A320253.P15379270076533639989

`or(A106800(n), A129165(A083075(n)))`
-/

namespace A320253.P15379270076533639989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106800 n) (A129165 (A083075 n).toNat)

end

end A320253.P15379270076533639989

/-! ## A320253.P7680863594412512417

`or(A129165(A083075(n)), A151510(n))`
-/

namespace A320253.P7680863594412512417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129165 (A083075 n).toNat) (A151510 n)

end

end A320253.P7680863594412512417

/-! ## A320253.P4495418766198493187

`or(A129165(A083075(n)), A151512(n))`
-/

namespace A320253.P4495418766198493187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129165 (A083075 n).toNat) (A151512 n)

end

end A320253.P4495418766198493187

/-!
# A320254: a(n) = n! * [x^n] exp(exp(x)*(x + (n/2 - 1)*x^2)).

The programs for A320254, there is no canonical definition to state claims against.
-/

/-! ## A320254.P2864063272502261137

`A031218((n+1)^(n-1))`
-/

namespace A320254.P2864063272502261137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A320254.P2864063272502261137

/-! ## A320254.P15897855979596285868

`A136623((n+1)^(n-1)+1)`
-/

namespace A320254.P15897855979596285868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)).toNat

end

end A320254.P15897855979596285868

/-!
# A320256: k-digit primes with the same even digit repeated k-1 times and a single odd digit.

The programs for A320256, there is no canonical definition to state claims against.
-/

/-! ## A320256.P10800918239409090654

`∩[A030291(n+1), A154764(n+1)]`
-/

namespace A320256.P10800918239409090654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320256.P10800918239409090654

/-! ## A320256.P6289640791081205217

`∩[A030291(n+1), A068690(n+2)]`
-/

namespace A320256.P6289640791081205217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068690 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320256.P6289640791081205217

/-! ## A320256.P1175359319414250488

`∩[A030291(n+1), A294601(n+1)]`
-/

namespace A320256.P1175359319414250488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320256.P1175359319414250488

/-! ## A320256.P17539154982325879136

`∩[A062353(n+2), p?[A024657(n)]]`
-/

namespace A320256.P17539154982325879136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320256.P17539154982325879136

/-! ## A320256.P8565976938320367834

`∩[A062353(n+1), A154764(n+1)]`
-/

namespace A320256.P8565976938320367834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320256.P8565976938320367834

/-!
# A320257: a(n) = [x^n] 1/(1 + Sum_{k>=1} k^n*x^k).

The programs for A320257, there is no canonical definition to state claims against.
-/

/-! ## A320257.P10855723213008636552

`A337220(A115217(n))-A115217(n)`
-/

namespace A320257.P10855723213008636552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337220 (A115217 n).toNat - A115217 n

end

end A320257.P10855723213008636552

/-!
# A320259: Terms that are on the y-axis of the square spiral built with 2*k, 2*k+1, 2*k+1 for k >= 0.

The programs for A320259, the canonical program `A320259.P9146631690839511481` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320259 has offset 0).

The definition of A320259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320259.P9146631690839511481

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9, a(4)=15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A320259

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P9146631690839511481.Spec : Prop :=
  ∀ n, P9146631690839511481.a n = A320259 n

theorem P9146631690839511481.correct : P9146631690839511481.Spec := by
  intro n
  simp only [A320259]

end A320259

/-! ## A320259.P6983158603338905495

`a(n-1)+A004772(n+1)` with `a(0)=0`
-/

namespace A320259.P6983158603338905495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A004772 (n + 1)

end

end A320259.P6983158603338905495

namespace A320259

/-- `a(n-1)+A004772(n+1)` -/
def P6983158603338905495.Spec : Prop :=
  ∀ n, P6983158603338905495.a n = A320259 n

end A320259

/-! ## A320259.P1963354168891681530

`∑[ceil(4*n/3)]`
-/

namespace A320259.P1963354168891681530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((n : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320259.P1963354168891681530

namespace A320259

/-- `∑[ceil(4*n/3)]` -/
def P1963354168891681530.Spec : Prop :=
  ∀ n, P1963354168891681530.a n = A320259 n

end A320259

/-! ## A320259.P6290693928938117892

`floor(∑[xor(1, 4*n)]/3)`
-/

namespace A320259.P6290693928938117892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A320259.P6290693928938117892

namespace A320259

/-- `floor(∑[xor(1, 4*n)]/3)` -/
def P6290693928938117892.Spec : Prop :=
  ∀ n, P6290693928938117892.a n = A320259 n

end A320259

/-! ## A320259.P14358388252748136600

`floor(C(2*(n+1), 2)/3)`
-/

namespace A320259.P14358388252748136600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * (n + 1)) 2 : ℚ) / 3⌋

end

end A320259.P14358388252748136600

namespace A320259

/-- `floor(C(2*(n+1), 2)/3)` -/
def P14358388252748136600.Spec : Prop :=
  ∀ n, P14358388252748136600.a n = A320259 n

end A320259

/-! ## A320259.P6904810689145738762

`round(C(2*(n+1), 2)/3)`
-/

namespace A320259.P6904810689145738762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * (n + 1)) 2 : ℚ) / 3)

end

end A320259.P6904810689145738762

namespace A320259

/-- `round(C(2*(n+1), 2)/3)` -/
def P6904810689145738762.Spec : Prop :=
  ∀ n, P6904810689145738762.a n = A320259 n

end A320259

/-! ## A320259.P4984624026824807142

`abs(∑[∑[C(2, n%3)]-1])`
-/

namespace A320259.P4984624026824807142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A320259.P4984624026824807142

namespace A320259

/-- `abs(∑[∑[C(2, n%3)]-1])` -/
def P4984624026824807142.Spec : Prop :=
  ∀ n, P4984624026824807142.a n = A320259 n

end A320259

/-! ## A320259.P5752232978245945835

`round(lcm(n+1, Δ[n²])/3)`
-/

namespace A320259.P5752232978245945835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 3)

end

end A320259.P5752232978245945835

namespace A320259

/-- `round(lcm(n+1, Δ[n²])/3)` -/
def P5752232978245945835.Spec : Prop :=
  ∀ n, P5752232978245945835.a n = A320259 n

end A320259

/-! ## A320259.P17720686791615539255

`∑[comp[record[lcm(2, n)]]]-(n+1)`
-/

namespace A320259.P17720686791615539255
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A320259.P17720686791615539255

namespace A320259

/-- `∑[comp[record[lcm(2, n)]]]-(n+1)` -/
def P17720686791615539255.Spec : Prop :=
  ∀ n, P17720686791615539255.a n = A320259 n

end A320259

/-! ## A320259.P5387536741627136684

`∑[a(n-3)+8]/2` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A320259.P5387536741627136684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A320259.P5387536741627136684

namespace A320259

/-- `∑[a(n-3)+8]/2` -/
def P5387536741627136684.Spec : Prop :=
  ∀ n, P5387536741627136684.a n = (A320259 n : ℚ)

end A320259

/-! ## A320259.P5203944840201549826

`floor((n+1)*or(1, 2*n)/3)`
-/

namespace A320259.P5203944840201549826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * Nat.lor 1 (2 * n) : ℚ) / 3⌋

end

end A320259.P5203944840201549826

namespace A320259

/-- `floor((n+1)*or(1, 2*n)/3)` -/
def P5203944840201549826.Spec : Prop :=
  ∀ n, P5203944840201549826.a n = A320259 n

end A320259

/-! ## A320259.P565610415530869562

`floor((n+1)*xor(1, 2*n)/3)`
-/

namespace A320259.P565610415530869562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * Nat.xor 1 (2 * n) : ℚ) / 3⌋

end

end A320259.P565610415530869562

namespace A320259

/-- `floor((n+1)*xor(1, 2*n)/3)` -/
def P565610415530869562.Spec : Prop :=
  ∀ n, P565610415530869562.a n = A320259 n

end A320259

/-! ## A320259.P12985356370911225515

`round((n+1)*or(1, 2*n)/3)`
-/

namespace A320259.P12985356370911225515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.lor 1 (2 * n) : ℚ) / 3))

end

end A320259.P12985356370911225515

namespace A320259

/-- `round((n+1)*or(1, 2*n)/3)` -/
def P12985356370911225515.Spec : Prop :=
  ∀ n, P12985356370911225515.a n = A320259 n

end A320259

/-! ## A320259.P8593579615074549904

`round((n+1)*xor(1, 2*n)/3)`
-/

namespace A320259.P8593579615074549904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.xor 1 (2 * n) : ℚ) / 3))

end

end A320259.P8593579615074549904

namespace A320259

/-- `round((n+1)*xor(1, 2*n)/3)` -/
def P8593579615074549904.Spec : Prop :=
  ∀ n, P8593579615074549904.a n = A320259 n

end A320259

/-! ## A320259.P16816489235912830529

`∑[∑[((n+1)%3)!]]-(n+1)`
-/

namespace A320259.P16816489235912830529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 1) % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A320259.P16816489235912830529

namespace A320259

/-- `∑[∑[((n+1)%3)!]]-(n+1)` -/
def P16816489235912830529.Spec : Prop :=
  ∀ n, P16816489235912830529.a n = A320259 n

end A320259

/-! ## A320259.P9146177483291352650

`∑[a(n-3)+4]-1` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A320259.P9146177483291352650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A320259.P9146177483291352650

namespace A320259

/-- `∑[a(n-3)+4]-1` -/
def P9146177483291352650.Spec : Prop :=
  ∀ n, P9146177483291352650.a n = A320259 n

end A320259

/-! ## A320259.P4714606043058408375

`4*n+a(n-3)-3` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A320259.P4714606043058408375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  (4 * n : ℤ) + (a (n - 3) - 3)

end

end A320259.P4714606043058408375

namespace A320259

/-- `4*n+a(n-3)-3` -/
def P4714606043058408375.Spec : Prop :=
  ∀ n, P4714606043058408375.a n = A320259 n

end A320259

/-! ## A320259.P2904472454881084891

`4*n-(3-a(n-3))` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A320259.P2904472454881084891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  (4 * n : ℤ) - (3 - a (n - 3))

end

end A320259.P2904472454881084891

namespace A320259

/-- `4*n-(3-a(n-3))` -/
def P2904472454881084891.Spec : Prop :=
  ∀ n, P2904472454881084891.a n = A320259 n

end A320259

/-! ## A320259.P1982442516060137081

`floor((n+1)/atan(3/(2*n+1)))`
-/

namespace A320259.P1982442516060137081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.arctan (3 / (2 * n + 1 : ℚ) : ℝ)⌋

end

end A320259.P1982442516060137081

namespace A320259

/-- `floor((n+1)/atan(3/(2*n+1)))` -/
def P1982442516060137081.Spec : Prop :=
  ∀ n, P1982442516060137081.a n = A320259 n

end A320259

/-!
# A320261: Write n in binary, then modify each run of 0's and each run of 1's by prepending a 1. a(n) is the decimal equivalent of the result.

The programs for A320261, there is no canonical definition to state claims against.
-/

/-! ## A320261.P3937260058061607822

`or(A175046(n+1), A320038(n+1))`
-/

namespace A320261.P3937260058061607822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175046 (n + 1)) (A320038 (n + 1))

end

end A320261.P3937260058061607822

/-! ## A320261.P3236286568662600124

`or(A320038(n+1), A320262(n+1))`
-/

namespace A320261.P3236286568662600124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320038 (n + 1)) (A320262 (n + 1))

end

end A320261.P3236286568662600124

/-! ## A320261.P12323677938150419813

`A175046(n+1)+A320038(n+1)-A320263(n+1)`
-/

namespace A320261.P12323677938150419813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1) + (A320038 (n + 1) - A320263 (n + 1))

end

end A320261.P12323677938150419813

/-! ## A320261.P8048111907221846827

`or(A175048(A175047(n+1)), A320038(n+1))`
-/

namespace A320261.P8048111907221846827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175048 (A175047 (n + 1)).toNat) (A320038 (n + 1))

end

end A320261.P8048111907221846827

/-! ## A320261.P2332832001559769132

`round(A175048(A175048(n+1)-1)/2)`
-/

namespace A320261.P2332832001559769132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A175048 (A175048 (n + 1) - 1).toNat : ℚ) / 2)

end

end A320261.P2332832001559769132

/-! ## A320261.P4226916037720362345

`A038572(A320039(n+1))`
-/

namespace A320261.P4226916037720362345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A320039 (n + 1)).toNat

end

end A320261.P4226916037720362345

/-! ## A320261.P11914819639241717759

`A163617(A320038(n+1))`
-/

namespace A320261.P11914819639241717759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A320038 (n + 1)).toNat

end

end A320261.P11914819639241717759

/-! ## A320261.P3195419869733132542

`A269170(A175046(n+1))`
-/

namespace A320261.P3195419869733132542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A175046 (n + 1)).toNat

end

end A320261.P3195419869733132542

/-! ## A320261.P10326570229317340337

`A269170(A269170(A320262(n+1)))`
-/

namespace A320261.P10326570229317340337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A269170 (A320262 (n + 1)).toNat).toNat

end

end A320261.P10326570229317340337

/-!
# A320262: Write n in binary, then modify each run of 0's and each run of 1's by appending a 0. a(n) is the decimal equivalent of the result.

The programs for A320262, there is no canonical definition to state claims against.
-/

/-! ## A320262.P2379300251155895321

`2*A320263(n+1)`
-/

namespace A320262.P2379300251155895321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320263 (n + 1)

end

end A320262.P2379300251155895321

/-! ## A320262.P10449311529805402990

`lcm(A074723(n+1), A320263(n+1))`
-/

namespace A320262.P10449311529805402990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074723 (n + 1)) (A320263 (n + 1))

end

end A320262.P10449311529805402990

/-! ## A320262.P16285014078104032274

`and(A175046(n+1), A320037(n+1))`
-/

namespace A320262.P16285014078104032274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175046 (n + 1)) (A320037 (n + 1))

end

end A320262.P16285014078104032274

/-! ## A320262.P7455704594385151788

`and(A320037(n+1), A320261(n+1))`
-/

namespace A320262.P7455704594385151788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320037 (n + 1)) (A320261 (n + 1))

end

end A320262.P7455704594385151788

/-! ## A320262.P691481973869002667

`2*and(A175046(n+1), A320038(n+1))`
-/

namespace A320262.P691481973869002667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A175046 (n + 1)) (A320038 (n + 1))

end

end A320262.P691481973869002667

/-! ## A320262.P434039203242524052

`2*and(A320038(n+1), A320039(n+1))`
-/

namespace A320262.P434039203242524052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (A320038 (n + 1)) (A320039 (n + 1))

end

end A320262.P434039203242524052

/-! ## A320262.P17162690254128497226

`A175046(n+1)+A320037(n+1)-A320039(n+1)`
-/

namespace A320262.P17162690254128497226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1) + (A320037 (n + 1) - A320039 (n + 1))

end

end A320262.P17162690254128497226

/-! ## A320262.P14645020513253805802

`and(2*A320038(n+1), A320038(A341522(n)))`
-/

namespace A320262.P14645020513253805802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A320038 (n + 1)) (A320038 (A341522 n).toNat)

end

end A320262.P14645020513253805802

/-! ## A320262.P18113240912463256927

`2*A175047(A175047(n+1)/A000034(n))`
-/

namespace A320262.P18113240912463256927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175047 (SequenceMachineLib.roundAway ((A175047 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A320262.P18113240912463256927

/-! ## A320262.P7224966236376408449

`lcm(2, A175047(A175047(n+1)))`
-/

namespace A320262.P7224966236376408449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A175047 (A175047 (n + 1)).toNat)

end

end A320262.P7224966236376408449

/-! ## A320262.P11857687263033667888

`A175047(2*A175047(n+1))/2`
-/

namespace A320262.P11857687263033667888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175047 (2 * A175047 (n + 1)).toNat : ℚ) / 2

end

end A320262.P11857687263033667888

/-! ## A320262.P16543839630808559807

`A004277(A320263(n+1))`
-/

namespace A320262.P16543839630808559807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A320263 (n + 1)).toNat

end

end A320262.P16543839630808559807

/-! ## A320262.P14846945124831995826

`A213370(A175046(n+1))`
-/

namespace A320262.P14846945124831995826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (A175046 (n + 1)).toNat

end

end A320262.P14846945124831995826

/-!
# A320263: Write n in binary, then modify each run of 0's and each run of 1's by prepending a 0. a(n) is the decimal equivalent of the result.

The programs for A320263, there is no canonical definition to state claims against.
-/

/-! ## A320263.P9439698910363198626

`A320262(n+1)/2`
-/

namespace A320263.P9439698910363198626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320262 (n + 1) : ℚ) / 2

end

end A320263.P9439698910363198626

/-! ## A320263.P10534360048249253544

`and(A175046(n+1), A320038(n+1))`
-/

namespace A320263.P10534360048249253544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175046 (n + 1)) (A320038 (n + 1))

end

end A320263.P10534360048249253544

/-! ## A320263.P3550089733229918469

`and(A320038(n+1), A320039(n+1))`
-/

namespace A320263.P3550089733229918469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320038 (n + 1)) (A320039 (n + 1))

end

end A320263.P3550089733229918469

/-! ## A320263.P11912760431965362984

`and(A175046(n+1), A320037(n+1))/2`
-/

namespace A320263.P11912760431965362984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A175046 (n + 1)) (A320037 (n + 1)) : ℚ) / 2

end

end A320263.P11912760431965362984

/-! ## A320263.P16753689420956736950

`and(A320037(n+1), A320261(n+1))/2`
-/

namespace A320263.P16753689420956736950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A320037 (n + 1)) (A320261 (n + 1)) : ℚ) / 2

end

end A320263.P16753689420956736950

/-! ## A320263.P5477133488548081338

`A175046(n+1)+A320038(n+1)-A320261(n+1)`
-/

namespace A320263.P5477133488548081338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175046 (n + 1) + (A320038 (n + 1) - A320261 (n + 1))

end

end A320263.P5477133488548081338

/-! ## A320263.P12176494050048094643

`A175047(A175047(2*(n+1))/4)`
-/

namespace A320263.P12176494050048094643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (SequenceMachineLib.roundAway ((A175047 (2 * (n + 1)) : ℚ) / 4)).toNat

end

end A320263.P12176494050048094643

/-! ## A320263.P8865187824246732330

`A175047(lcm(2, A175047(n+1))/2)`
-/

namespace A320263.P8865187824246732330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (SequenceMachineLib.roundAway ((Int.lcm 2 (A175047 (n + 1)) : ℚ) / 2)).toNat

end

end A320263.P8865187824246732330

/-! ## A320263.P10531394799859424962

`A175047(A175047(n+1)+A175047(n+1))/4`
-/

namespace A320263.P10531394799859424962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175047 (A175047 (n + 1) + A175047 (n + 1)).toNat : ℚ) / 4

end

end A320263.P10531394799859424962

/-! ## A320263.P7905550306798159351

`A175047(A106151(A048678(A175047(n+1))))`
-/

namespace A320263.P7905550306798159351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A106151 (A048678 (A175047 (n + 1)).toNat).toNat).toNat

end

end A320263.P7905550306798159351

/-! ## A320263.P13012007823427083966

`A001281(A320262(n+1))`
-/

namespace A320263.P13012007823427083966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A320262 (n + 1)).toNat

end

end A320263.P13012007823427083966

/-! ## A320263.P4837843874303424882

`A213370(A175046(n+1))/2`
-/

namespace A320263.P4837843874303424882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213370 (A175046 (n + 1)).toNat : ℚ) / 2

end

end A320263.P4837843874303424882

/-!
# A320265: Number of proper multisets of nonempty words with a total of n letters over n-ary alphabet such that if a letter occurs in the multiset all predecessors occur at least once.

The programs for A320265, there is no canonical definition to state claims against.
-/

/-! ## A320265.P1492220671066179655

`A257741(n+2)-A319518(n+2)`
-/

namespace A320265.P1492220671066179655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257741 (n + 2) - A319518 (n + 2)

end

end A320265.P1492220671066179655

/-!
# A320266: Number of balanced orderless tree-factorizations of n.

The programs for A320266, there is no canonical definition to state claims against.
-/

/-! ## A320266.P946333787534966104

`A252665(A045966(n+1))+A096276(A167688(n+1))`
-/

namespace A320266.P946333787534966104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (A045966 (n + 1)).toNat + A096276 (A167688 (n + 1)).toNat

end

end A320266.P946333787534966104

/-! ## A320266.P9010439114209414168

`A137512(A316767(n+1)+A001055(n+1))`
-/

namespace A320266.P9010439114209414168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A316767 (n + 1) + A001055 (n + 1)).toNat

end

end A320266.P9010439114209414168

/-! ## A320266.P4293115867909473783

`A196390(A050336(n+1)%A345689(n+3))`
-/

namespace A320266.P4293115867909473783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196390 (Int.tmod (A050336 (n + 1)) (A345689 (n + 3))).toNat

end

end A320266.P4293115867909473783

/-! ## A320266.P5688936065180583941

`A321578(A050336(n+1))%A196004(2*(n+1))`
-/

namespace A320266.P5688936065180583941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321578 (A050336 (n + 1)).toNat) (A196004 (2 * (n + 1)))

end

end A320266.P5688936065180583941

/-! ## A320266.P16791942551911525520

`A322435(n+1)+A316829(A227103(n+1))`
-/

namespace A320266.P16791942551911525520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322435 (n + 1) + A316829 (A227103 (n + 1)).toNat

end

end A320266.P16791942551911525520

/-!
# A320267: Number of balanced complete orderless tree-factorizations of n.

The programs for A320267, there is no canonical definition to state claims against.
-/

/-! ## A320267.P58272040645696808

`A274708(A050370(n+1)²)`
-/

namespace A320267.P58272040645696808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274708 (A050370 (n + 1) ^ 2).toNat

end

end A320267.P58272040645696808

/-! ## A320267.P5056506511752157533

`A274708(A050370(n+1)^2)`
-/

namespace A320267.P5056506511752157533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274708 (A050370 (n + 1) ^ 2).toNat

end

end A320267.P5056506511752157533

/-! ## A320267.P1803370857355174004

`A171172((A050370(n+1)+1)²)`
-/

namespace A320267.P1803370857355174004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 ((A050370 (n + 1) + 1) ^ 2).toNat

end

end A320267.P1803370857355174004

/-! ## A320267.P12509557408998495775

`A050370(n+1)^A111106(A123623(n+1))`
-/

namespace A320267.P12509557408998495775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050370 (n + 1) : ℚ) ^ (A111106 (A123623 (n + 1)).toNat : ℤ)

end

end A320267.P12509557408998495775

/-! ## A320267.P8201806020528250174

`A033273(A027746(n+1)^A050370(n+1))`
-/

namespace A320267.P8201806020528250174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((A027746 (n + 1) : ℚ) ^ (A050370 (n + 1) : ℤ))).toNat

end

end A320267.P8201806020528250174

/-! ## A320267.P5253665495027119909

`or(A050370(n+1), A318721(A254578(n+1)))`
-/

namespace A320267.P5253665495027119909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050370 (n + 1)) (A318721 (A254578 (n + 1)).toNat)

end

end A320267.P5253665495027119909

/-! ## A320267.P6072905781304843571

`A358371(2^A050370(n+1))`
-/

namespace A320267.P6072905781304843571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358371 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A050370 (n + 1) : ℤ))).toNat

end

end A320267.P6072905781304843571

/-! ## A320267.P16455768394770136329

`A033273(5^A050370(n+1))`
-/

namespace A320267.P16455768394770136329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A050370 (n + 1) : ℤ))).toNat

end

end A320267.P16455768394770136329

/-! ## A320267.P14983600273211328187

`A069288(6^A050370(n+1))`
-/

namespace A320267.P14983600273211328187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A050370 (n + 1) : ℤ))).toNat

end

end A320267.P14983600273211328187

/-! ## A320267.P5486170570771458762

`gcd(A050370(n+1), A351708(n+1))`
-/

namespace A320267.P5486170570771458762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050370 (n + 1)) (A351708 (n + 1))

end

end A320267.P5486170570771458762

/-! ## A320267.P11599429500612789195

`A050370(A103164(n+1))`
-/

namespace A320267.P11599429500612789195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A103164 (n + 1)).toNat

end

end A320267.P11599429500612789195

/-!
# A320268: Number of unlabeled series-reduced rooted trees with n nodes where the non-leaf branches directly under any given node are all equal.

The programs for A320268, there is no canonical definition to state claims against.
-/

/-! ## A320268.P11286922252949380835

`A087066(A226999(n+1))`
-/

namespace A320268.P11286922252949380835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (A226999 (n + 1)).toNat

end

end A320268.P11286922252949380835

/-! ## A320268.P184129558768560375

`A087066(or(A212804(n), A294234(n)))`
-/

namespace A320268.P184129558768560375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (Int.lor (A212804 n) (A294234 n)).toNat

end

end A320268.P184129558768560375

/-! ## A320268.P4895107958552774920

`A308872(A004917(n+1))+A212804(n)`
-/

namespace A320268.P4895107958552774920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308872 (A004917 (n + 1)).toNat + A212804 n

end

end A320268.P4895107958552774920

/-! ## A320268.P11996518233449543401

`A191291(A000002(n+3)+A001333(n)+1)`
-/

namespace A320268.P11996518233449543401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A000002 (n + 3) + (A001333 n + 1)).toNat

end

end A320268.P11996518233449543401

/-! ## A320268.P4714772451857522727

`A003056(A363142(n))-A000045(n)`
-/

namespace A320268.P4714772451857522727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A363142 n).toNat - A000045 n

end

end A320268.P4714772451857522727

/-!
# A320269: Matula-Goebel numbers of lone-child-avoiding rooted trees in which the non-leaf branches directly under any given node are all equal (semi-achirality).

The programs for A320269, there is no canonical definition to state claims against.
-/

/-! ## A320269.P5075588843565804116

`filter[A291636(n+1), A340363(#)]`
-/

namespace A320269.P5075588843565804116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A320269.P5075588843565804116

/-! ## A320269.P823781135217590957

`filter[A291636(n+1), A340372(#)]`
-/

namespace A320269.P823781135217590957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A320269.P823781135217590957

/-! ## A320269.P2693141128290458824

`∩[A324854(n+1), A331936(n+1)]`
-/

namespace A320269.P2693141128290458824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320269.P2693141128290458824

/-! ## A320269.P12459404039383241602

`A291636(∑[A014963(A291636(2*(n+3)))])`
-/

namespace A320269.P12459404039383241602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A291636 (2 * (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291636 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320269.P12459404039383241602

/-! ## A320269.P16871219204491985631

`A000188(A002148(n))*A291636(A325360(n+1))`
-/

namespace A320269.P16871219204491985631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A002148 n).toNat * A291636 (A325360 (n + 1)).toNat

end

end A320269.P16871219204491985631

/-!
# A320270: Number of unlabeled balanced semi-binary rooted trees with n nodes.

The programs for A320270, there is no canonical definition to state claims against.
-/

/-! ## A320270.P13675204981226353997

`A000194(A113204(n+1)+A106523(n))`
-/

namespace A320270.P13675204981226353997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A113204 (n + 1) + A106523 n).toNat

end

end A320270.P13675204981226353997

/-! ## A320270.P1546025769852822159

`A000196(A334269(n+1)+A054336(∑[n]))`
-/

namespace A320270.P1546025769852822159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A334269 (n + 1) + A054336 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A320270.P1546025769852822159

/-! ## A320270.P16133739109722225375

`A192928(n)+A003269(n)%A296549(n+1)`
-/

namespace A320270.P16133739109722225375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192928 n + Int.tmod (A003269 n) (A296549 (n + 1))

end

end A320270.P16133739109722225375

/-! ## A320270.P11272119614190664345

`floor(root(A239629(n+4), 6))`
-/

namespace A320270.P11272119614190664345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239629 (n + 4) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A320270.P11272119614190664345

/-! ## A320270.P6277252145229965375

`A121900(A303346(n+1))`
-/

namespace A320270.P6277252145229965375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A303346 (n + 1)).toNat

end

end A320270.P6277252145229965375

/-!
# A320271: Number of unlabeled semi-binary rooted trees with n nodes in which the non-leaf branches directly under any given node are all equal.

The programs for A320271, there is no canonical definition to state claims against.
-/

/-! ## A320271.P7787359049999193036

`Δ[A298353(n)-A298352(n)]`
-/

namespace A320271.P7787359049999193036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298353 n - A298352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320271.P7787359049999193036

/-! ## A320271.P12853192070684003350

`Δ[A298348(n+2)-A298353(n)]`
-/

namespace A320271.P12853192070684003350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298348 (n + 2) - A298353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320271.P12853192070684003350

/-! ## A320271.P5051441254474383105

`A331680(n+3)+A331671(A331708(n+1))`
-/

namespace A320271.P5051441254474383105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331680 (n + 3) + A331671 (A331708 (n + 1)).toNat

end

end A320271.P5051441254474383105

/-! ## A320271.P14554225772363528545

`A226005(floor((ϕ^n)²)-n+1)`
-/

namespace A320271.P14554225772363528545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (⌊(Real.goldenRatio ^ n) ^ 2⌋ - (n : ℤ) + 1).toNat

end

end A320271.P14554225772363528545

/-! ## A320271.P8569514276558892548

`A329974(A000627(n+2))`
-/

namespace A320271.P8569514276558892548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329974 (A000627 (n + 2)).toNat

end

end A320271.P8569514276558892548

/-!
# A320272: Indices (starting at 0) of integers in the increasing sequence S of nonnegative numbers that are representable in base 3/2 with digits {0, 1, 2}.

The programs for A320272, there is no canonical definition to state claims against.
-/

/-! ## A320272.P7502023336711361119

`∑[A339895(A182047(n)²)]`
-/

namespace A320272.P7502023336711361119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (A182047 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320272.P7502023336711361119

/-! ## A320272.P10002345926239321564

`A320274(A261691(n))`
-/

namespace A320272.P10002345926239321564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320274 (A261691 n).toNat

end

end A320272.P10002345926239321564

/-! ## A320272.P8336766920041300330

`∑[∑[A125029(A286866(n))]]`
-/

namespace A320272.P8336766920041300330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125029 (A286866 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320272.P8336766920041300330

/-! ## A320272.P17164212890544634064

`∑[∑[A175078(A272268(n+1))]]`
-/

namespace A320272.P17164212890544634064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A272268 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320272.P17164212890544634064

/-! ## A320272.P13621690039461323387

`∑[∑{e}[n!, #]]+n`
-/

namespace A320272.P13621690039461323387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A320272.P13621690039461323387

/-!
# A320275: Numbers whose distinct prime indices are pairwise indivisible and whose own prime indices are connected and span an initial interval of positive integers.

The programs for A320275, there is no canonical definition to state claims against.
-/

/-! ## A320275.P15564624108814158683

`∩[A319837(n+1), A329559(n+2)]`
-/

namespace A320275.P15564624108814158683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329559 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320275.P15564624108814158683

/-! ## A320275.P11565508770957683108

`∩[A305078(n+1), A319837(n+1)]`
-/

namespace A320275.P11565508770957683108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320275.P11565508770957683108

/-! ## A320275.P17201173125263704879

`∩[A305103(n+1), A319837(n+1)]`
-/

namespace A320275.P17201173125263704879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320275.P17201173125263704879

/-! ## A320275.P14547526727539810035

`∩[A319837(n+1), lt[A327512(n+2), 3]+2]`
-/

namespace A320275.P14547526727539810035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319837 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A320275.P14547526727539810035

/-! ## A320275.P8253970533949179333

`∩[A305081(n+1), A356955(n+1)]`
-/

namespace A320275.P8253970533949179333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320275.P8253970533949179333

/-!
# A320276: a(n) is the smallest prime p such that there are n pairs of primes (i,j) with i < j < p and i*j == 1 mod p.

The programs for A320276, there is no canonical definition to state claims against.
-/

/-! ## A320276.P4062031820332332626

`or(A058716(A005578(n)), A321006(n+1))`
-/

namespace A320276.P4062031820332332626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058716 (A005578 n).toNat) (A321006 (n + 1))

end

end A320276.P4062031820332332626

/-! ## A320276.P14177160325888874630

`A321006(A037442(n+1))`
-/

namespace A320276.P14177160325888874630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321006 (A037442 (n + 1)).toNat

end

end A320276.P14177160325888874630

/-! ## A320276.P14242568392116041271

`A321006(A065666(n+1))`
-/

namespace A320276.P14242568392116041271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321006 (A065666 (n + 1)).toNat

end

end A320276.P14242568392116041271

/-!
# A320278: a(n) is the number of positive integers 0 < i < n such that i + n is a square.

The programs for A320278, the canonical program `A320278.P10936433761191186733` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320278 has offset 0).

The definition of A320278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320278.P17892842518668044819

`A393564(n)+A025441(n)`
-/

namespace A320278.P17892842518668044819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393564 n + A025441 n

end

end A320278.P17892842518668044819

namespace A320278

/-- `A393564(n)+A025441(n)` -/
def P17892842518668044819.Spec : Prop :=
  ∀ n, P17892842518668044819.a n = A320278 n

end A320278

/-! ## A320278.P2616963299518594382

`A273190(n)-char[A007318(n)²]`
-/

namespace A320278.P2616963299518594382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A320278.P2616963299518594382

namespace A320278

/-- `A273190(n)-char[A007318(n)²]` -/
def P2616963299518594382.Spec : Prop :=
  ∀ n, P2616963299518594382.a n = A320278 n

end A320278

/-! ## A320278.P10936433761191186733

`A172471(A172471(n)+n)%A003059(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A320278

/-- `A172471(A172471(n)+n)%A003059(n+1)` -/
def P10936433761191186733.Spec : Prop :=
  ∀ n, P10936433761191186733.a n = A320278 n

theorem P10936433761191186733.correct : P10936433761191186733.Spec := by
  intro n
  simp only [A320278]

end A320278

/-! ## A320278.P1036313634445193291

`A000196(comp[2*(n+1)])-floor(sqrt(n))`
-/

namespace A320278.P1036313634445193291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - (Nat.sqrt n : ℤ)

end

end A320278.P1036313634445193291

namespace A320278

/-- `A000196(comp[2*(n+1)])-floor(sqrt(n))` -/
def P1036313634445193291.Spec : Prop :=
  ∀ n, P1036313634445193291.a n = A320278 n

end A320278

/-! ## A320278.P15093443958662629409

`A003059(A004277(n))-∑[char[n²]]`
-/

namespace A320278.P15093443958662629409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A004277 n).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A320278.P15093443958662629409

namespace A320278

/-- `A003059(A004277(n))-∑[char[n²]]` -/
def P15093443958662629409.Spec : Prop :=
  ∀ n, P15093443958662629409.a n = A320278 n

end A320278

/-! ## A320278.P11262623590457316943

`A000194(A028391(2*n))-A000196(n)`
-/

namespace A320278.P11262623590457316943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A028391 (2 * n)).toNat - A000196 n

end

end A320278.P11262623590457316943

namespace A320278

/-- `A000194(A028391(2*n))-A000196(n)` -/
def P11262623590457316943.Spec : Prop :=
  ∀ n, P11262623590457316943.a n = A320278 n

end A320278

/-! ## A320278.P17564008898389578945

`A000194(A056847(2*n))-A000196(n)`
-/

namespace A320278.P17564008898389578945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056847 (2 * n)).toNat - A000196 n

end

end A320278.P17564008898389578945

namespace A320278

/-- `A000194(A056847(2*n))-A000196(n)` -/
def P17564008898389578945.Spec : Prop :=
  ∀ n, P17564008898389578945.a n = A320278 n

end A320278

/-! ## A320278.P9951407705072077848

`A003059(A004273(n)+1)-A003059(n+1)`
-/

namespace A320278.P9951407705072077848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A004273 n + 1).toNat - A003059 (n + 1)

end

end A320278.P9951407705072077848

namespace A320278

/-- `A003059(A004273(n)+1)-A003059(n+1)` -/
def P9951407705072077848.Spec : Prop :=
  ∀ n, P9951407705072077848.a n = A320278 n

end A320278

/-! ## A320278.P6365275973148951896

`A003059(A028310(2*n))-A003059(n+1)`
-/

namespace A320278.P6365275973148951896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A028310 (2 * n)).toNat - A003059 (n + 1)

end

end A320278.P6365275973148951896

namespace A320278

/-- `A003059(A028310(2*n))-A003059(n+1)` -/
def P6365275973148951896.Spec : Prop :=
  ∀ n, P6365275973148951896.a n = A320278 n

end A320278

/-! ## A320278.P3030558580971168470

`A003059(A028310(n)+n)-A003059(n+1)`
-/

namespace A320278.P3030558580971168470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A028310 n + (n : ℤ)).toNat - A003059 (n + 1)

end

end A320278.P3030558580971168470

namespace A320278

/-- `A003059(A028310(n)+n)-A003059(n+1)` -/
def P3030558580971168470.Spec : Prop :=
  ∀ n, P3030558580971168470.a n = A320278 n

end A320278

/-! ## A320278.P8692525414707736983

`A000194(A028391(2*n))-(n-A028391(n))`
-/

namespace A320278.P8692525414707736983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A028391 (2 * n)).toNat - ((n : ℤ) - A028391 n)

end

end A320278.P8692525414707736983

namespace A320278

/-- `A000194(A028391(2*n))-(n-A028391(n))` -/
def P8692525414707736983.Spec : Prop :=
  ∀ n, P8692525414707736983.a n = A320278 n

end A320278

/-! ## A320278.P150502052796810675

`A000194(A056847(2*n))-A000194(A056847(n+1))`
-/

namespace A320278.P150502052796810675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A056847 (2 * n)).toNat - A000194 (A056847 (n + 1)).toNat

end

end A320278.P150502052796810675

namespace A320278

/-- `A000194(A056847(2*n))-A000194(A056847(n+1))` -/
def P150502052796810675.Spec : Prop :=
  ∀ n, P150502052796810675.a n = A320278 n

end A320278

/-! ## A320278.P1569176156693257918

`A259361(A232091(2*n))-A259361(A232091(n+1))`
-/

namespace A320278.P1569176156693257918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A232091 (2 * n)).toNat - A259361 (A232091 (n + 1)).toNat

end

end A320278.P1569176156693257918

namespace A320278

/-- `A259361(A232091(2*n))-A259361(A232091(n+1))` -/
def P1569176156693257918.Spec : Prop :=
  ∀ n, P1569176156693257918.a n = A320278 n

end A320278

/-! ## A320278.P6032532159898124755

`A339184(A010052(n)+2*n)`
-/

namespace A320278.P6032532159898124755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 (A010052 n + (2 * n : ℤ)).toNat

end

end A320278.P6032532159898124755

namespace A320278

/-- `A339184(A010052(n)+2*n)` -/
def P6032532159898124755.Spec : Prop :=
  ∀ n, P6032532159898124755.a n = A320278 n

end A320278

/-! ## A320278.P18036308697520408119

`A003059(A233583(2*n+1))-A003059(A233583(n+2))`
-/

namespace A320278.P18036308697520408119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A233583 (2 * n + 1)).toNat - A003059 (A233583 (n + 2)).toNat

end

end A320278.P18036308697520408119

namespace A320278

/-- `A003059(A233583(2*n+1))-A003059(A233583(n+2))` -/
def P18036308697520408119.Spec : Prop :=
  ∀ n, P18036308697520408119.a n = A320278 n

end A320278

/-! ## A320278.P6231963843178861206

`A003059(A000267(n²))-A003059(n+1)`
-/

namespace A320278.P6231963843178861206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000267 (n ^ 2)).toNat - A003059 (n + 1)

end

end A320278.P6231963843178861206

namespace A320278

/-- `A003059(A000267(n²))-A003059(n+1)` -/
def P6231963843178861206.Spec : Prop :=
  ∀ n, P6231963843178861206.a n = A320278 n

end A320278

/-!
# A320279: Number of partitions of 2*n into parts that are the average of twin prime pairs (A014574).

The programs for A320279, there is no canonical definition to state claims against.
-/

/-! ## A320279.P10721898550665122884

`A086520(A114199(A008611(n)))`
-/

namespace A320279.P10721898550665122884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A114199 (A008611 n).toNat).toNat

end

end A320279.P10721898550665122884

/-! ## A320279.P6264887021569727841

`A000041(A008611(n))-A267814(A165886(n))`
-/

namespace A320279.P6264887021569727841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008611 n).toNat - A267814 (A165886 n).toNat

end

end A320279.P6264887021569727841

/-! ## A320279.P2979418572153562521

`A105564(A008706(A029152(n)))`
-/

namespace A320279.P2979418572153562521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A008706 (A029152 n).toNat).toNat

end

end A320279.P2979418572153562521

/-! ## A320279.P10233162126127927899

`A277050(A029152(n)%A236250(n+10))`
-/

namespace A320279.P10233162126127927899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277050 (Int.tmod (A029152 n) (A236250 (n + 10))).toNat

end

end A320279.P10233162126127927899

/-! ## A320279.P6788391309593935144

`A004728(A029152(n))%A179137(n+1)`
-/

namespace A320279.P6788391309593935144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004728 (A029152 n).toNat) (A179137 (n + 1))

end

end A320279.P6788391309593935144

/-!
# A320280: Triangle T(n, k) = Sum_{i=1..n} Stirling2(n,i) * abs(Stirling1(i-1,k-1)), n >= 1, 1 <= k <= n.

The programs for A320280, there is no canonical definition to state claims against.
-/

/-! ## A320280.P10397596813503481760

`or(A271705(n), A331416(A000217(n)))`
-/

namespace A320280.P10397596813503481760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271705 n) (A331416 (A000217 n).toNat)

end

end A320280.P10397596813503481760

/-! ## A320280.P12300855044845244613

`or(A268643(A320449(n)), A271705(n))`
-/

namespace A320280.P12300855044845244613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268643 (A320449 n).toNat) (A271705 n)

end

end A320280.P12300855044845244613

/-! ## A320280.P2229307373695519131

`or(A215020(A000931(3*n)), A271705(n))`
-/

namespace A320280.P2229307373695519131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215020 (A000931 (3 * n)).toNat) (A271705 n)

end

end A320280.P2229307373695519131

/-! ## A320280.P1898984650070805634

`A329452(A343804(n))`
-/

namespace A320280.P1898984650070805634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 (A343804 n).toNat

end

end A320280.P1898984650070805634

/-! ## A320280.P10629483039544016707

`A071537(A156883(n+1))`
-/

namespace A320280.P10629483039544016707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071537 (A156883 (n + 1)).toNat

end

end A320280.P10629483039544016707

/-!
# A320281: Terms that are on the positive x-axis of the square spiral built with 2*k, 2*k+1, 2*k+1 for k >= 0.

The programs for A320281, the canonical program `A320281.P11759171823262854581` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320281 has offset 0).

The definition of A320281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A320281.P11759171823262854581

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=18, a(4)=35`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A320281

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P11759171823262854581.Spec : Prop :=
  ∀ n, P11759171823262854581.a n = A320281 n

theorem P11759171823262854581.correct : P11759171823262854581.Spec := by
  intro n
  simp only [A320281]

end A320281

/-! ## A320281.P10820935903619810014

`ceil(n*(8*n-6)/3)`
-/

namespace A320281.P10820935903619810014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((8 * n : ℤ) - 6) : ℚ) / 3⌉

end

end A320281.P10820935903619810014

namespace A320281

/-- `ceil(n*(8*n-6)/3)` -/
def P10820935903619810014.Spec : Prop :=
  ∀ n, P10820935903619810014.a n = A320281 n

end A320281

/-! ## A320281.P15460471994847842302

`floor(C(abs(1-4*n), 2)/3)`
-/

namespace A320281.P15460471994847842302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose |1 - (4 * n : ℤ)|.toNat 2 : ℚ) / 3⌋

end

end A320281.P15460471994847842302

namespace A320281

/-- `floor(C(abs(1-4*n), 2)/3)` -/
def P15460471994847842302.Spec : Prop :=
  ∀ n, P15460471994847842302.a n = A320281 n

end A320281

/-! ## A320281.P2154760828281255892

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=5, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A320281.P2154760828281255892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 5, 6] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320281.P2154760828281255892

namespace A320281

/-- `∑[∑[floor(a(n-3))]]` -/
def P2154760828281255892.Spec : Prop :=
  ∀ n, (P2154760828281255892.a n : ℤ) = A320281 n

end A320281

/-! ## A320281.P9850465795318431483

`∑[∑[a(n-3)%5+5]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A320281.P9850465795318431483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 3) % 5 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320281.P9850465795318431483

namespace A320281

/-- `∑[∑[a(n-3)%5+5]]` -/
def P9850465795318431483.Spec : Prop :=
  ∀ n, (P9850465795318431483.a n : ℤ) = A320281 n

end A320281

/-! ## A320281.P14003912016709152276

`floor(A033567(n)/3)`
-/

namespace A320281.P14003912016709152276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033567 n : ℚ) / 3⌋

end

end A320281.P14003912016709152276

namespace A320281

/-- `floor(A033567(n)/3)` -/
def P14003912016709152276.Spec : Prop :=
  ∀ n, P14003912016709152276.a n = A320281 n

end A320281

/-! ## A320281.P11779656335158145510

`A113422(n)+n*(n-2)`
-/

namespace A320281.P11779656335158145510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + (n : ℤ) * ((n : ℤ) - 2)

end

end A320281.P11779656335158145510

namespace A320281

/-- `A113422(n)+n*(n-2)` -/
def P11779656335158145510.Spec : Prop :=
  ∀ n, P11779656335158145510.a n = A320281 n

end A320281

/-! ## A320281.P3822045000587875289

`A000567(n)-ceil((n²+1)/3)+1`
-/

namespace A320281.P3822045000587875289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - ⌈(n ^ 2 + 1 : ℚ) / 3⌉ + 1

end

end A320281.P3822045000587875289

namespace A320281

/-- `A000567(n)-ceil((n²+1)/3)+1` -/
def P3822045000587875289.Spec : Prop :=
  ∀ n, P3822045000587875289.a n = A320281 n

end A320281

/-! ## A320281.P3940800830828281204

`round(2*n*record[A006257(2*n)]/3)`
-/

namespace A320281.P3940800830828281204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 3)

end

end A320281.P3940800830828281204

namespace A320281

/-- `round(2*n*record[A006257(2*n)]/3)` -/
def P3940800830828281204.Spec : Prop :=
  ∀ n, P3940800830828281204.a n = A320281 n

end A320281

/-! ## A320281.P6558714522383678112

`A222170(n)+A109340(n)`
-/

namespace A320281.P6558714522383678112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n + A109340 n

end

end A320281.P6558714522383678112

namespace A320281

/-- `A222170(n)+A109340(n)` -/
def P6558714522383678112.Spec : Prop :=
  ∀ n, P6558714522383678112.a n = A320281 n

end A320281

/-! ## A320281.P6432215948051470333

`A320259(n)+A014107(n)`
-/

namespace A320281.P6432215948051470333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n + A014107 n

end

end A320281.P6432215948051470333

namespace A320281

/-- `A320259(n)+A014107(n)` -/
def P6432215948051470333.Spec : Prop :=
  ∀ n, P6432215948051470333.a n = A320281 n

end A320281

/-! ## A320281.P9288821751038463210

`A000567(n)-A000212(n)`
-/

namespace A320281.P9288821751038463210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n - A000212 n

end

end A320281.P9288821751038463210

namespace A320281

/-- `A000567(n)-A000212(n)` -/
def P9288821751038463210.Spec : Prop :=
  ∀ n, P9288821751038463210.a n = A320281 n

end A320281

/-! ## A320281.P9548818229789036073

`A056106(n)-A007980(n)`
-/

namespace A320281.P9548818229789036073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n - A007980 n

end

end A320281.P9548818229789036073

namespace A320281

/-- `A056106(n)-A007980(n)` -/
def P9548818229789036073.Spec : Prop :=
  ∀ n, P9548818229789036073.a n = A320281 n

end A320281

/-! ## A320281.P16009987986344477878

`A002939(n)-A256320(n)`
-/

namespace A320281.P16009987986344477878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n - A256320 n

end

end A320281.P16009987986344477878

namespace A320281

/-- `A002939(n)-A256320(n)` -/
def P16009987986344477878.Spec : Prop :=
  ∀ n, P16009987986344477878.a n = A320281 n

end A320281

/-! ## A320281.P11883385160172877362

`A033579(n)-A330451(n)`
-/

namespace A320281.P11883385160172877362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - A330451 n

end

end A320281.P11883385160172877362

namespace A320281

/-- `A033579(n)-A330451(n)` -/
def P11883385160172877362.Spec : Prop :=
  ∀ n, P11883385160172877362.a n = A320281 n

end A320281

/-! ## A320281.P8640448041251696460

`A299259(n)-A103517(n)`
-/

namespace A320281.P8640448041251696460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299259 n - A103517 n

end

end A320281.P8640448041251696460

namespace A320281

/-- `A299259(n)-A103517(n)` -/
def P8640448041251696460.Spec : Prop :=
  ∀ n, P8640448041251696460.a n = A320281 n

end A320281

/-! ## A320281.P2670708946992239498

`A062741(n)-A398058(n)`
-/

namespace A320281.P2670708946992239498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n - A398058 n

end

end A320281.P2670708946992239498

namespace A320281

/-- `A062741(n)-A398058(n)` -/
def P2670708946992239498.Spec : Prop :=
  ∀ n, P2670708946992239498.a n = A320281 n

end A320281

/-! ## A320281.P4677832284517611253

`A080855(n)-A389614(n)`
-/

namespace A320281.P4677832284517611253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - A389614 n

end

end A320281.P4677832284517611253

namespace A320281

/-- `A080855(n)-A389614(n)` -/
def P4677832284517611253.Spec : Prop :=
  ∀ n, P4677832284517611253.a n = A320281 n

end A320281

/-! ## A320281.P13667814637948706195

`A218471(n)-A397972(n)`
-/

namespace A320281.P13667814637948706195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n - A397972 n

end

end A320281.P13667814637948706195

namespace A320281

/-- `A218471(n)-A397972(n)` -/
def P13667814637948706195.Spec : Prop :=
  ∀ n, P13667814637948706195.a n = A320281 n

end A320281

/-!
# A320282: a(n) = (3^(prime(n)-1) - 2^(prime(n)-1))/prime(n).

The programs for A320282, there is no canonical definition to state claims against.
-/

/-! ## A320282.P5822976006014745702

`A146211(n+3)-A007663(n+3)`
-/

namespace A320282.P5822976006014745702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146211 (n + 3) - A007663 (n + 3)

end

end A320282.P5822976006014745702

/-! ## A320282.P12148177152601654266

`A146211(n+3)-3*A096060(n+3)`
-/

namespace A320282.P12148177152601654266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146211 (n + 3) - 3 * A096060 (n + 3)

end

end A320282.P12148177152601654266

/-! ## A320282.P8934675907769940725

`A146211(n+3)-A000048(A020621(n+1))`
-/

namespace A320282.P8934675907769940725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146211 (n + 3) - A000048 (A020621 (n + 1)).toNat

end

end A320282.P8934675907769940725

/-! ## A320282.P8220209275792860534

`A146211(n+3)-A000048(A020624(n+1))`
-/

namespace A320282.P8220209275792860534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146211 (n + 3) - A000048 (A020624 (n + 1)).toNat

end

end A320282.P8220209275792860534

/-! ## A320282.P13378547114762615006

`A146211(n+3)-A000048(A020626(n+1))`
-/

namespace A320282.P13378547114762615006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146211 (n + 3) - A000048 (A020626 (n + 1)).toNat

end

end A320282.P13378547114762615006

/-!
# A320283: Lexicographical ordering of pure imaginary integers in the base (-1+i) numeral system.

The programs for A320283, the canonical program `A320283.P15640859263192477612` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320283 has offset 0).

The definition of A320283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4825 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320283.P8969140910118741313

`A073791(2*n)/2`
-/

namespace A320283.P8969140910118741313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073791 (2 * n) : ℚ) / 2

end

end A320283.P8969140910118741313

namespace A320283

/-- `A073791(2*n)/2` -/
def P8969140910118741313.Spec : Prop :=
  ∀ n, P8969140910118741313.a n = (A320283 n : ℚ)

end A320283

/-! ## A320283.P15640859263192477612

`n-and(A005843(n), A270106(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A320283

/-- `n-and(A005843(n), A270106(n))` -/
def P15640859263192477612.Spec : Prop :=
  ∀ n, P15640859263192477612.a n = A320283 n

theorem P15640859263192477612.correct : P15640859263192477612.Spec := by
  intro n
  simp only [A320283]

end A320283

/-! ## A320283.P1613100244678617423

`A001489(and(A005843(n), A270106(n)))+n`
-/

namespace A320283.P1613100244678617423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (Int.land (A005843 n) (A270106 n)).toNat + (n : ℤ)

end

end A320283.P1613100244678617423

namespace A320283

/-- `A001489(and(A005843(n), A270106(n)))+n` -/
def P1613100244678617423.Spec : Prop :=
  ∀ n, P1613100244678617423.a n = A320283 n

end A320283

/-! ## A320283.P10977304813011568486

`A001478(and(A005843(n), A270106(n))+1)+n+1`
-/

namespace A320283.P10977304813011568486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (Int.land (A005843 n) (A270106 n) + 1).toNat + (n + 1 : ℤ)

end

end A320283.P10977304813011568486

namespace A320283

/-- `A001478(and(A005843(n), A270106(n))+1)+n+1` -/
def P10977304813011568486.Spec : Prop :=
  ∀ n, P10977304813011568486.a n = A320283 n

end A320283

/-! ## A320283.P2638597567810497855

`n-and(2*n, A270106(n+1))`
-/

namespace A320283.P2638597567810497855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (2 * n : ℤ) (A270106 (n + 1))

end

end A320283.P2638597567810497855

namespace A320283

/-- `n-and(2*n, A270106(n+1))` -/
def P2638597567810497855.Spec : Prop :=
  ∀ n, P2638597567810497855.a n = A320283 n

end A320283

/-! ## A320283.P13446210145720014649

`A001489(and(2*n, A270106(n+1)))+n`
-/

namespace A320283.P13446210145720014649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (Int.land (2 * n : ℤ) (A270106 (n + 1))).toNat + (n : ℤ)

end

end A320283.P13446210145720014649

namespace A320283

/-- `A001489(and(2*n, A270106(n+1)))+n` -/
def P13446210145720014649.Spec : Prop :=
  ∀ n, P13446210145720014649.a n = A320283 n

end A320283

/-! ## A320283.P673378728862883514

`xor(n, A014334(n))-A014334(n)`
-/

namespace A320283.P673378728862883514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A014334 n) - A014334 n

end

end A320283.P673378728862883514

namespace A320283

/-- `xor(n, A014334(n))-A014334(n)` -/
def P673378728862883514.Spec : Prop :=
  ∀ n, P673378728862883514.a n = A320283 n

end A320283

/-! ## A320283.P1739402797566487166

`and(A005843(n), A112627(n+1))-n`
-/

namespace A320283.P1739402797566487166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005843 n) (A112627 (n + 1)) - (n : ℤ)

end

end A320283.P1739402797566487166

namespace A320283

/-- `and(A005843(n), A112627(n+1))-n` -/
def P1739402797566487166.Spec : Prop :=
  ∀ n, P1739402797566487166.a n = A320283 n

end A320283

/-! ## A320283.P10938448389571170425

`A001489(n)+and(A005843(n), A112627(n+1))`
-/

namespace A320283.P10938448389571170425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + Int.land (A005843 n) (A112627 (n + 1))

end

end A320283.P10938448389571170425

namespace A320283

/-- `A001489(n)+and(A005843(n), A112627(n+1))` -/
def P10938448389571170425.Spec : Prop :=
  ∀ n, P10938448389571170425.a n = A320283 n

end A320283

/-! ## A320283.P11893028182108529220

`and(2*n+1, A112627(n+2))-(n+1)`
-/

namespace A320283.P11893028182108529220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A112627 (n + 2)) - (n + 1 : ℤ)

end

end A320283.P11893028182108529220

namespace A320283

/-- `and(2*n+1, A112627(n+2))-(n+1)` -/
def P11893028182108529220.Spec : Prop :=
  ∀ n, P11893028182108529220.a n = A320283 n

end A320283

/-! ## A320283.P16209440148919240862

`xor(n, A061801(n))-A061801(n)`
-/

namespace A320283.P16209440148919240862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A061801 n) - A061801 n

end

end A320283.P16209440148919240862

namespace A320283

/-- `xor(n, A061801(n))-A061801(n)` -/
def P16209440148919240862.Spec : Prop :=
  ∀ n, P16209440148919240862.a n = A320283 n

end A320283

/-! ## A320283.P12632035382274428939

`25-A003056(A000096(xor(25, n)))`
-/

namespace A320283.P12632035382274428939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 - A003056 (A000096 (Nat.xor 25 n)).toNat

end

end A320283.P12632035382274428939

namespace A320283

/-- `25-A003056(A000096(xor(25, n)))` -/
def P12632035382274428939.Spec : Prop :=
  ∀ n, P12632035382274428939.a n = A320283 n

end A320283

/-! ## A320283.P8682540043700429452

`25-A003056(A000217(xor(25, n)))`
-/

namespace A320283.P8682540043700429452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 - A003056 (A000217 (Nat.xor 25 n)).toNat

end

end A320283.P8682540043700429452

namespace A320283

/-- `25-A003056(A000217(xor(25, n)))` -/
def P8682540043700429452.Spec : Prop :=
  ∀ n, P8682540043700429452.a n = A320283 n

end A320283

/-!
# A320286: Expansion of Product_{k>=1} 1/(1 - x^k - x^(2*k) - x^(3*k)).

The programs for A320286, there is no canonical definition to state claims against.
-/

/-! ## A320286.P13825768234917736013

`A345167(A002865(2*n))+A036378(n)`
-/

namespace A320286.P13825768234917736013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A002865 (2 * n)).toNat + A036378 n

end

end A320286.P13825768234917736013

/-!
# A320287: a(n) = n! * [x^n] Sum_{k>=0} exp(n^k*x)*x^k/k!.

The programs for A320287, there is no canonical definition to state claims against.
-/

/-! ## A320287.P16281756474965390046

`A355395(∑[4*n])`
-/

namespace A320287.P16281756474965390046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355395 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320287.P16281756474965390046

/-! ## A320287.P4685686347072566455

`C(A355395(A046092(n)), A178489(n))`
-/

namespace A320287.P4685686347072566455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A355395 (A046092 n).toNat).toNat (A178489 n).toNat

end

end A320287.P4685686347072566455

/-! ## A320287.P5978491750207811629

`A355395(A046092(n))+A000007(2*n+1)`
-/

namespace A320287.P5978491750207811629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355395 (A046092 n).toNat + A000007 (2 * n + 1)

end

end A320287.P5978491750207811629

/-! ## A320287.P12928955617949502615

`A178489(3*n+1)*A355395(A046092(n))`
-/

namespace A320287.P12928955617949502615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (3 * n + 1) * A355395 (A046092 n).toNat

end

end A320287.P12928955617949502615

/-!
# A320288: a(n) = n! * [x^n] exp(exp(x)*(exp(n*x) - 1)/(exp(x) - 1) - n).

The programs for A320288, there is no canonical definition to state claims against.
-/

/-! ## A320288.P9646865377021531799

`A355423(∑[4*n])`
-/

namespace A320288.P9646865377021531799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320288.P9646865377021531799

/-!
# A320289: Number of phylogenetic trees with n labels and no singleton leaves.

The programs for A320289, there is no canonical definition to state claims against.
-/

/-! ## A320289.P11659214388009322277

`A027870(A330945(n+5)+A323223(n))`
-/

namespace A320289.P11659214388009322277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A330945 (n + 5) + A323223 n).toNat

end

end A320289.P11659214388009322277

/-!
# A320290: Number of permutations p of [2n] such that in 0p the largest up-jump equals n and no down-jump is larger than 2.

The programs for A320290, there is no canonical definition to state claims against.
-/

/-! ## A320290.P6337616967308909511

`A291680(∑[4*n])`
-/

namespace A320290.P6337616967308909511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291680 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A320290.P6337616967308909511

/-! ## A320290.P15637456952421335327

`gcd(A000038(n), A291680(A046092(n)))`
-/

namespace A320290.P15637456952421335327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A291680 (A046092 n).toNat)

end

end A320290.P15637456952421335327

/-! ## A320290.P5279108465423369092

`or(A000007(n), A291680(A046092(n)))`
-/

namespace A320290.P5279108465423369092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A291680 (A046092 n).toNat)

end

end A320290.P5279108465423369092

/-! ## A320290.P12643420387948186824

`or(A151933(n), A291680(A046092(n)))`
-/

namespace A320290.P12643420387948186824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A291680 (A046092 n).toNat)

end

end A320290.P12643420387948186824

/-! ## A320290.P8169647530321778877

`A007318(C(2, n))*A291680(A046092(n))`
-/

namespace A320290.P8169647530321778877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A291680 (A046092 n).toNat

end

end A320290.P8169647530321778877

/-! ## A320290.P1450280932773855415

`A291680(A046092(n))/A007318(∑[n+1])`
-/

namespace A320290.P1450280932773855415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291680 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A320290.P1450280932773855415

/-! ## A320290.P5126236976155194664

`A014963(15*(n+1))*A291680(A046092(n))`
-/

namespace A320290.P5126236976155194664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A291680 (A046092 n).toNat

end

end A320290.P5126236976155194664

/-! ## A320290.P14057367888299799164

`A000108(C(2, n+2))*A291680(A046092(n))`
-/

namespace A320290.P14057367888299799164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A291680 (A046092 n).toNat

end

end A320290.P14057367888299799164

/-! ## A320290.P3760569891937093305

`A007318(A000217(n+6))*A291680(A046092(n))`
-/

namespace A320290.P3760569891937093305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 6)).toNat * A291680 (A046092 n).toNat

end

end A320290.P3760569891937093305

/-!
# A320291: Number of singleton-free multiset partitions of integer partitions of n with no 1's.

The programs for A320291, there is no canonical definition to state claims against.
-/

/-! ## A320291.P2599266968246196957

`A320267(2^n)+floor(acot(n))-1`
-/

namespace A320291.P2599266968246196957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (2 ^ n) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A320291.P2599266968246196957

/-! ## A320291.P800582465712616673

`A320267(2^n)-A178334(n)`
-/

namespace A320291.P800582465712616673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (2 ^ n) - A178334 n

end

end A320291.P800582465712616673

/-! ## A320291.P11981042310853517534

`A320267(2^n)-A178489(n)`
-/

namespace A320291.P11981042310853517534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (2 ^ n) - A178489 n

end

end A320291.P11981042310853517534

/-! ## A320291.P10450289596130753729

`A320267(A000079(n))+-1%(n+1)`
-/

namespace A320291.P10450289596130753729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (A000079 n).toNat + Int.tmod (-1) (n + 1 : ℤ)

end

end A320291.P10450289596130753729

/-! ## A320291.P7653233866090634563

`A320267(A000079(n))+A057428(n)`
-/

namespace A320291.P7653233866090634563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (A000079 n).toNat + A057428 n

end

end A320291.P7653233866090634563

/-!
# A320292: Zerofree numbers k such that the product (m+n)*p, where m,n are the first and the last digits of k, and p is the number which is the part of k between m and n, is a divisor of k.

The programs for A320292, there is no canonical definition to state claims against.
-/

/-! ## A320292.P5336239289763986407

`filter[A320121(n+1), A168046(#)]`
-/

namespace A320292.P5336239289763986407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A320292.P5336239289763986407

/-!
# A320294: Number of series-reduced rooted trees whose leaves are non-singleton integer partitions whose multiset union is an integer partition of n with no 1's.

The programs for A320294, there is no canonical definition to state claims against.
-/

/-! ## A320294.P16321365474918450766

`A259361(A329053(n))-A158780(n)`
-/

namespace A320294.P16321365474918450766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A329053 n).toNat - A158780 n

end

end A320294.P16321365474918450766

/-! ## A320294.P8459769237862096380

`A335524(A120803(n+1)-A178779(n))`
-/

namespace A320294.P8459769237862096380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A120803 (n + 1) - A178779 n).toNat

end

end A320294.P8459769237862096380

/-! ## A320294.P16697600144482015371

`A120803(n+1)-A153490(A066094(n))`
-/

namespace A320294.P16697600144482015371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120803 (n + 1) - A153490 (A066094 n).toNat

end

end A320294.P16697600144482015371

/-! ## A320294.P9836636040116621310

`A316624(n+1)-A113515(A067553(n))`
-/

namespace A320294.P9836636040116621310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316624 (n + 1) - A113515 (A067553 n).toNat

end

end A320294.P9836636040116621310

/-!
# A320296: Number of series-reduced rooted trees whose leaves form an integer partition of n with no 1's.

The programs for A320296, there is no canonical definition to state claims against.
-/

/-! ## A320296.P6300922549566284256

`A167638(n+2)+A084888(floor(2^(n-1)))`
-/

namespace A320296.P6300922549566284256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167638 (n + 2) + A084888 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A320296.P6300922549566284256

/-! ## A320296.P6246963534317615186

`A167687(A027642(n+1))+A167638(n+2)`
-/

namespace A320296.P6246963534317615186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167687 (A027642 (n + 1)).toNat + A167638 (n + 2)

end

end A320296.P6246963534317615186

/-! ## A320296.P16018540749632073579

`A167638(n+2)+A000035(A052705(n))`
-/

namespace A320296.P16018540749632073579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167638 (n + 2) + A000035 (A052705 n).toNat

end

end A320296.P16018540749632073579

/-!
# A320297: a(n) = a(n-1-a(a(a(n-1)))) + a(a(a(a(n-1)))) for n > 1, a(n) = n for n < 2.

The programs for A320297, there is no canonical definition to state claims against.
-/

/-! ## A320297.P12842241838083646977

`A135664(A064711(n+1))%A309356(2*n+3)`
-/

namespace A320297.P12842241838083646977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135664 (A064711 (n + 1)).toNat) (A309356 (2 * n + 3))

end

end A320297.P12842241838083646977

/-! ## A320297.P4891167102803890495

`round(log(∑[A364686(3*n+1)]))`
-/

namespace A320297.P4891167102803890495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364686 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A320297.P4891167102803890495

/-! ## A320297.P2056440934897432349

`floor(sqrt(A333227(3*n+2)+n+1))-2`
-/

namespace A320297.P2056440934897432349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A333227 (3 * n + 2) + (n + 1 : ℤ)) - 2

end

end A320297.P2056440934897432349

/-! ## A320297.P107307728391765619

`A080342(A303664(n))`
-/

namespace A320297.P107307728391765619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (A303664 n).toNat

end

end A320297.P107307728391765619

/-! ## A320297.P12876787380343824418

`A000195(A000097(n)+1)`
-/

namespace A320297.P12876787380343824418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A000097 n + 1).toNat

end

end A320297.P12876787380343824418

/-!
# A320298: Differences between positions of 1's in binary expansion of Pi.

The programs for A320298, there is no canonical definition to state claims against.
-/

/-! ## A320298.P3083098301431556895

`A004711(n+2)-A004711(n+1)`
-/

namespace A320298.P3083098301431556895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 2) - A004711 (n + 1)

end

end A320298.P3083098301431556895

/-! ## A320298.P8029004588037877060

`Δ[A004711(n+1)]`
-/

namespace A320298.P8029004588037877060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320298.P8029004588037877060

/-! ## A320298.P9226130339650127251

`Δ[A256108(n+1)]`
-/

namespace A320298.P9226130339650127251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320298.P9226130339650127251

/-! ## A320298.P5001185910661593985

`abs(Δ[A004711(-xor(n, -1))])`
-/

namespace A320298.P5001185910661593985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A320298.P5001185910661593985

/-! ## A320298.P11208106797537993655

`A000027(Δ[A004711(-xor(n, -1))])`
-/

namespace A320298.P11208106797537993655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A320298.P11208106797537993655

/-! ## A320298.P16480517104585314529

`A256108(n+2)-A256108(n+1)`
-/

namespace A320298.P16480517104585314529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 2) - A256108 (n + 1)

end

end A320298.P16480517104585314529

/-! ## A320298.P241461128801719447

`A004526(2*Δ[A004711(-xor(n, -1))])`
-/

namespace A320298.P241461128801719447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A320298.P241461128801719447

/-! ## A320298.P16126482803477990347

`(A000041(n)%2)!*Δ[A004711(-xor(n, -1))]`
-/

namespace A320298.P16126482803477990347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * (f1 (n + 1) - f1 n)

end

end A320298.P16126482803477990347

/-! ## A320298.P16514259762166677656

`A001222(2^Δ[A004711(-xor(n, -1))])`
-/

namespace A320298.P16514259762166677656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A320298.P16514259762166677656

/-! ## A320298.P5935509454481291823

`abs(Δ[A004711(A008619(2*n))])`
-/

namespace A320298.P5935509454481291823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A320298.P5935509454481291823

/-! ## A320298.P15411887044391685298

`abs(Δ[A004711(A027656(2*n))])`
-/

namespace A320298.P15411887044391685298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (A027656 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A320298.P15411887044391685298

/-! ## A320298.P2023003822143504332

`A320299(n+1)+1`
-/

namespace A320298.P2023003822143504332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320299 (n + 1) + 1

end

end A320298.P2023003822143504332

/-!
# A320299: Lengths of runs of consecutive zeros in binary expansion of Pi.

The programs for A320299, there is no canonical definition to state claims against.
-/

/-! ## A320299.P12970447776371367962

`A320298(n+1)-1`
-/

namespace A320299.P12970447776371367962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320298 (n + 1) - 1

end

end A320299.P12970447776371367962

/-! ## A320299.P7708640389478044150

`A004711(n+2)-A004711(n+1)-1`
-/

namespace A320299.P7708640389478044150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 2) - A004711 (n + 1) - 1

end

end A320299.P7708640389478044150

/-! ## A320299.P1245665882817129924

`Δ[A004711(n+1)]-1`
-/

namespace A320299.P1245665882817129924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A320299.P1245665882817129924

/-! ## A320299.P1290321209593458519

`Δ[A256108(n+1)]-1`
-/

namespace A320299.P1290321209593458519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A320299.P1290321209593458519

/-! ## A320299.P17207465359973599484

`Δ[A004711(-xor(n, -1))-n]`
-/

namespace A320299.P17207465359973599484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320299.P17207465359973599484

/-! ## A320299.P2640632023947361769

`A000401(A320298(n+1))`
-/

namespace A320299.P2640632023947361769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A320298 (n + 1)).toNat

end

end A320299.P2640632023947361769

/-! ## A320299.P14676770686784243814

`A000401(Δ[A004711(n+1)])`
-/

namespace A320299.P14676770686784243814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (f1 (n + 1) - f1 n).toNat

end

end A320299.P14676770686784243814

/-! ## A320299.P10196251241799794047

`A001633(Δ[A004711(n+1)])`
-/

namespace A320299.P10196251241799794047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (f1 (n + 1) - f1 n).toNat

end

end A320299.P10196251241799794047

/-! ## A320299.P8688763141389545096

`A002113(Δ[A004711(n+1)])`
-/

namespace A320299.P8688763141389545096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A320299.P8688763141389545096

/-! ## A320299.P137336864753560157

`A002837(Δ[A004711(n+1)])`
-/

namespace A320299.P137336864753560157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A320299.P137336864753560157

/-! ## A320299.P17974129557156783886

`A004775(Δ[A004711(n+1)])`
-/

namespace A320299.P17974129557156783886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (f1 (n + 1) - f1 n).toNat

end

end A320299.P17974129557156783886

/-! ## A320299.P6654765327592918175

`A004852(Δ[A004711(n+1)])`
-/

namespace A320299.P6654765327592918175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004852 (f1 (n + 1) - f1 n).toNat

end

end A320299.P6654765327592918175

/-! ## A320299.P18289305122359307663

`A004859(Δ[A004711(n+1)])`
-/

namespace A320299.P18289305122359307663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (f1 (n + 1) - f1 n).toNat

end

end A320299.P18289305122359307663

/-! ## A320299.P6991812956250728115

`A004862(Δ[A004711(n+1)])`
-/

namespace A320299.P6991812956250728115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (f1 (n + 1) - f1 n).toNat

end

end A320299.P6991812956250728115

/-! ## A320299.P15046107179458204643

`A004863(Δ[A004711(n+1)])`
-/

namespace A320299.P15046107179458204643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (f1 (n + 1) - f1 n).toNat

end

end A320299.P15046107179458204643

/-! ## A320299.P10587504794382603918

`A004894(Δ[A004711(n+1)])`
-/

namespace A320299.P10587504794382603918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (f1 (n + 1) - f1 n).toNat

end

end A320299.P10587504794382603918

/-! ## A320299.P3061303949267810915

`A004905(Δ[A004711(n+1)])`
-/

namespace A320299.P3061303949267810915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (f1 (n + 1) - f1 n).toNat

end

end A320299.P3061303949267810915

