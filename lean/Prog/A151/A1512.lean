import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A151200: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A151200, there is no canonical definition to state claims against.
-/

/-! ## A151200.P16623331974127277741

`A262672(A151159(n+1))`
-/

namespace A151200.P16623331974127277741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 (A151159 (n + 1)).toNat

end

end A151200.P16623331974127277741

/-! ## A151200.P17667308413319117840

`A065033(A057087(n)+∑[∑[n]])`
-/

namespace A151200.P17667308413319117840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057087 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A151200.P17667308413319117840

/-!
# A151201: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151201, there is no canonical definition to state claims against.
-/

/-! ## A151201.P2072829068291238434

`A065033((n+2)*A150211(n))`
-/

namespace A151201.P2072829068291238434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n + 2 : ℤ) * A150211 n).toNat

end

end A151201.P2072829068291238434

/-! ## A151201.P13991237487868549072

`A048027(n+1)+A008619(ceil(sqrt(22^n)))`
-/

namespace A151201.P13991237487868549072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048027 (n + 1) + A008619 ⌈Real.sqrt (22 ^ n : ℝ)⌉.toNat

end

end A151201.P13991237487868549072

/-!
# A151202: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151202, there is no canonical definition to state claims against.
-/

/-! ## A151202.P11864299258488252231

`A008619(round(sqrt(A090313(n))))`
-/

namespace A151202.P11864299258488252231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (Real.sqrt (A090313 n : ℝ))).toNat

end

end A151202.P11864299258488252231

/-! ## A151202.P9375433206993554054

`A110654(round(sqrt(A090313(n)))+1)`
-/

namespace A151202.P9375433206993554054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway (Real.sqrt (A090313 n : ℝ)) + 1).toNat

end

end A151202.P9375433206993554054

/-!
# A151203: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151203, there is no canonical definition to state claims against.
-/

/-! ## A151203.P16286512976100828636

`A026741(A057087(n))+A002026(n)`
-/

namespace A151203.P16286512976100828636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A057087 n).toNat + A002026 n

end

end A151203.P16286512976100828636

/-! ## A151203.P2621004197267609156

`A120895(n)+A004526(A057087(n))`
-/

namespace A151203.P2621004197267609156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120895 n + A004526 (A057087 n).toNat

end

end A151203.P2621004197267609156

/-!
# A151204: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151204, there is no canonical definition to state claims against.
-/

/-! ## A151204.P9640156608086427038

`A008619(A128732(n+2))`
-/

namespace A151204.P9640156608086427038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A128732 (n + 2)).toNat

end

end A151204.P9640156608086427038

/-! ## A151204.P1487650375714075346

`A264429(A000665(n))+A026781(n)`
-/

namespace A151204.P1487650375714075346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264429 (A000665 n).toNat + A026781 n

end

end A151204.P1487650375714075346

/-!
# A151205: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151205, there is no canonical definition to state claims against.
-/

/-! ## A151205.P8041769402683228756

`A248231(A081910(n))`
-/

namespace A151205.P8041769402683228756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A081910 n).toNat

end

end A151205.P8041769402683228756

/-! ## A151205.P2223856931777827685

`A248183(A081910(n)+2)`
-/

namespace A151205.P2223856931777827685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A081910 n + 2).toNat

end

end A151205.P2223856931777827685

/-!
# A151206: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151206, there is no canonical definition to state claims against.
-/

/-! ## A151206.P17484236409442524626

`∑[A172474(n*A092176(2*n)+3)]`
-/

namespace A151206.P17484236409442524626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 ((n : ℤ) * A092176 (2 * n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151206.P17484236409442524626

/-! ## A151206.P4054317983042826288

`A029889(n)+A002264(A024050(n))`
-/

namespace A151206.P4054317983042826288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029889 n + A002264 (A024050 n).toNat

end

end A151206.P4054317983042826288

/-!
# A151207: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A151207, there is no canonical definition to state claims against.
-/

/-! ## A151207.P1354764712130241279

`A248231(A081186(n))`
-/

namespace A151207.P1354764712130241279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A081186 n).toNat

end

end A151207.P1354764712130241279

/-! ## A151207.P831917945095545099

`A194990(A155603(n))`
-/

namespace A151207.P831917945095545099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A155603 n).toNat

end

end A151207.P831917945095545099

/-!
# A151208: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151208, there is no canonical definition to state claims against.
-/

/-! ## A151208.P12025105574168721563

`∑[A034887(A025030(n)-1)]`
-/

namespace A151208.P12025105574168721563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A025030 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151208.P12025105574168721563

/-! ## A151208.P2252274862253214633

`A064952(A066568(10*a(n-1)+1))` with `a(0)=1`
-/

namespace A151208.P2252274862253214633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064952 (A066568 (10 * a (n - 1) + 1).toNat).toNat

end

end A151208.P2252274862253214633

/-!
# A151209: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151209, there is no canonical definition to state claims against.
-/

/-! ## A151209.P2528285596137730410

`A175414(a(n-1))+1` with `a(0)=1`
-/

namespace A151209.P2528285596137730410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175414 (a (n - 1)).toNat + 1

end

end A151209.P2528285596137730410

/-!
# A151210: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151210, there is no canonical definition to state claims against.
-/

/-! ## A151210.P1931262205124635499

`A005117(∑[∑{p}[n+1, lcm(#, n+1)]!])`
-/

namespace A151210.P1931262205124635499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.lcm p (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151210.P1931262205124635499

/-!
# A151211: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, 0, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151211, there is no canonical definition to state claims against.
-/

/-! ## A151211.P2429139359565234993

`A076272(∑[A005191(n+1)])`
-/

namespace A151211.P2429139359565234993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151211.P2429139359565234993

/-! ## A151211.P6439997569735152528

`A076272(∑[A324595(n+1)])`
-/

namespace A151211.P6439997569735152528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151211.P6439997569735152528

/-!
# A151212: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 1, 1)}.

The programs for A151212, there is no canonical definition to state claims against.
-/

/-! ## A151212.P17121428271357240374

`or(A037474(A122450(n)), A081659(n))`
-/

namespace A151212.P17121428271357240374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037474 (A122450 n).toNat) (A081659 n)

end

end A151212.P17121428271357240374

/-! ## A151212.P12772342517579820691

`A026256(A151148(n+1))`
-/

namespace A151212.P12772342517579820691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026256 (A151148 (n + 1)).toNat

end

end A151212.P12772342517579820691

/-!
# A151213: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 1, 1)}.

The programs for A151213, there is no canonical definition to state claims against.
-/

/-! ## A151213.P9406438553826660785

`A120837(A150833(n))`
-/

namespace A151213.P9406438553826660785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120837 (A150833 n).toNat

end

end A151213.P9406438553826660785

/-! ## A151213.P9825492899340805303

`A285582(A294692(n))`
-/

namespace A151213.P9825492899340805303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285582 (A294692 n).toNat

end

end A151213.P9825492899340805303

/-!
# A151214: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151214, there is no canonical definition to state claims against.
-/

/-! ## A151214.P17281229576930204002

`A004277(A151215(n))-A151217(n)`
-/

namespace A151214.P17281229576930204002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151215 n).toNat - A151217 n

end

end A151214.P17281229576930204002

/-! ## A151214.P1192315387199530020

`and(p?[A105755(n+1)], A151219(n))`
-/

namespace A151214.P1192315387199530020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A151219 n)

end

end A151214.P1192315387199530020

/-!
# A151215: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151215, there is no canonical definition to state claims against.
-/

/-! ## A151215.P18251415386357559932

`A014682(A151217(n)+A151214(n))`
-/

namespace A151215.P18251415386357559932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151217 n + A151214 n).toNat

end

end A151215.P18251415386357559932

/-! ## A151215.P17637570935505406912

`A273943(A151217(n)+A151214(n))`
-/

namespace A151215.P17637570935505406912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A151217 n + A151214 n).toNat

end

end A151215.P17637570935505406912

/-!
# A151216: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151216, there is no canonical definition to state claims against.
-/

/-! ## A151216.P16416020780071129850

`A004277(A151218(n))-A151219(n)`
-/

namespace A151216.P16416020780071129850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151218 n).toNat - A151219 n

end

end A151216.P16416020780071129850

/-! ## A151216.P16423874635270610091

`A151217(n)-A061104(A224294(n+1))`
-/

namespace A151216.P16423874635270610091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151217 n - A061104 (A224294 (n + 1)).toNat

end

end A151216.P16423874635270610091

/-!
# A151217: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151217, there is no canonical definition to state claims against.
-/

/-! ## A151217.P8573006787485815095

`A004277(A151215(n))-A151214(n)`
-/

namespace A151217.P8573006787485815095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151215 n).toNat - A151214 n

end

end A151217.P8573006787485815095

/-! ## A151217.P4232589428647466848

`A004277(A151236(n))-A151241(n)`
-/

namespace A151217.P4232589428647466848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151236 n).toNat - A151241 n

end

end A151217.P4232589428647466848

/-!
# A151218: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151218, there is no canonical definition to state claims against.
-/

/-! ## A151218.P1146089968549497618

`A014682(A151219(n)+A151216(n))`
-/

namespace A151218.P1146089968549497618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151219 n + A151216 n).toNat

end

end A151218.P1146089968549497618

/-! ## A151218.P8728957455904345097

`A273943(A151219(n)+A151216(n))`
-/

namespace A151218.P8728957455904345097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A151219 n + A151216 n).toNat

end

end A151218.P8728957455904345097

/-!
# A151219: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151219, there is no canonical definition to state claims against.
-/

/-! ## A151219.P8640846631413374436

`A004277(A151218(n))-A151216(n)`
-/

namespace A151219.P8640846631413374436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151218 n).toNat - A151216 n

end

end A151219.P8640846631413374436

/-!
# A151220: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151220, there is no canonical definition to state claims against.
-/

/-! ## A151220.P10452425599777248010

`A227145(A150877(n+1))`
-/

namespace A151220.P10452425599777248010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227145 (A150877 (n + 1)).toNat

end

end A151220.P10452425599777248010

/-! ## A151220.P17472782839058678486

`∑[A068962(∑[A086405(n)])]`
-/

namespace A151220.P17472782839058678486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151220.P17472782839058678486

/-!
# A151221: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151221, there is no canonical definition to state claims against.
-/

/-! ## A151221.P13199527485200659649

`A110658(floor(sqrt(A196853(n+1))))`
-/

namespace A151221.P13199527485200659649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (Int.sqrt (A196853 (n + 1))).toNat

end

end A151221.P13199527485200659649

/-! ## A151221.P11745474726764453341

`A052984(n)-A108423(A349642(n))`
-/

namespace A151221.P11745474726764453341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A108423 (A349642 n).toNat

end

end A151221.P11745474726764453341

/-!
# A151222: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151222, there is no canonical definition to state claims against.
-/

/-! ## A151222.P2359767713794834322

`A150998(n)+A004526(A151016(n))`
-/

namespace A151222.P2359767713794834322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150998 n + A004526 (A151016 n).toNat

end

end A151222.P2359767713794834322

/-! ## A151222.P13578967519658171646

`A192543(4^n+5^n)`
-/

namespace A151222.P13578967519658171646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (4 ^ n + 5 ^ n)

end

end A151222.P13578967519658171646

/-!
# A151223: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, 1)}.

The programs for A151223, there is no canonical definition to state claims against.
-/

/-! ## A151223.P15287564548908257345

`or(1, Δ[A194990(A151157(n))])`
-/

namespace A151223.P15287564548908257345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A151157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A151223.P15287564548908257345

/-! ## A151223.P4117064530140340937

`or(dr(A077188(n+1)), A151222(n))`
-/

namespace A151223.P4117064530140340937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A077188 (n + 1)) : ℤ) (A151222 n)

end

end A151223.P4117064530140340937

/-!
# A151224: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, 1)}.

The programs for A151224, there is no canonical definition to state claims against.
-/

/-! ## A151224.P517244652664689116

`A030101(∑[round(5*2^(n-2))]*A007598(n)+2)`
-/

namespace A151224.P517244652664689116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ((∑ j ∈ Finset.range (n + 1), f1 j) * A007598 n + 2).toNat

end

end A151224.P517244652664689116

/-! ## A151224.P8423743213429627061

`A008619(floor(A317664(n)/A122400(n)))`
-/

namespace A151224.P8423743213429627061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(A317664 n : ℚ) / (A122400 n : ℚ)⌋.toNat

end

end A151224.P8423743213429627061

/-!
# A151225: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151225, there is no canonical definition to state claims against.
-/

/-! ## A151225.P13520751523300063581

`A120837(A150872(n))`
-/

namespace A151225.P13520751523300063581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120837 (A150872 n).toNat

end

end A151225.P13520751523300063581

/-! ## A151225.P11038198226077432407

`Δ[A166104(A279567(n))]+1`
-/

namespace A151225.P11038198226077432407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166104 (A279567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A151225.P11038198226077432407

/-!
# A151226: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151226, there is no canonical definition to state claims against.
-/

/-! ## A151226.P3002849358123784315

`A286337(A132275(2*n+1))+A245092(n)`
-/

namespace A151226.P3002849358123784315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A132275 (2 * n + 1)).toNat + A245092 n

end

end A151226.P3002849358123784315

/-! ## A151226.P13735369396625733736

`A005707(A003463(n+1))+n`
-/

namespace A151226.P13735369396625733736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005707 (A003463 (n + 1)).toNat + (n : ℤ)

end

end A151226.P13735369396625733736

/-!
# A151227: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 1)}.

The programs for A151227, there is no canonical definition to state claims against.
-/

/-! ## A151227.P11704738700767065864

`A349536(A395582(n+1))`
-/

namespace A151227.P11704738700767065864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A395582 (n + 1)).toNat

end

end A151227.P11704738700767065864

/-! ## A151227.P6688392138136506230

`A065033(A148363(n)+A017974(n))`
-/

namespace A151227.P6688392138136506230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148363 n + A017974 n).toNat

end

end A151227.P6688392138136506230

/-!
# A151228: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 1)}.

The programs for A151228, there is no canonical definition to state claims against.
-/

/-! ## A151228.P3654745414498462388

`A124495(n)+A004526(A124507(n))`
-/

namespace A151228.P3654745414498462388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124495 n + A004526 (A124507 n).toNat

end

end A151228.P3654745414498462388

/-! ## A151228.P16247498073448682725

`A303788(A005809(n)-A001507(n+1))`
-/

namespace A151228.P16247498073448682725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A005809 n - A001507 (n + 1)).toNat

end

end A151228.P16247498073448682725

/-!
# A151229: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151229, there is no canonical definition to state claims against.
-/

/-! ## A151229.P197243182398105833

`∑{#}[n, C(n, #)*A150714(#)]`
-/

namespace A151229.P197243182398105833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A150714 k

end

end A151229.P197243182398105833

/-! ## A151229.P12431294545433198451

`A225058(ceil(3/4*5^n)+3^n-n)`
-/

namespace A151229.P12431294545433198451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (⌈(3 : ℚ) / 4 * (5 ^ n : ℚ)⌉ + ((3 ^ n : ℤ) - (n : ℤ))).toNat

end

end A151229.P12431294545433198451

/-!
# A151230: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151230, there is no canonical definition to state claims against.
-/

/-! ## A151230.P18040283650422321146

`A088462(A002411(n)+A000351(n))`
-/

namespace A151230.P18040283650422321146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A002411 n + A000351 n).toNat

end

end A151230.P18040283650422321146

/-! ## A151230.P17778631743705097056

`A004526(A123894(n)+A000699(n))`
-/

namespace A151230.P17778631743705097056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A123894 n + A000699 n).toNat

end

end A151230.P17778631743705097056

/-!
# A151231: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151231, there is no canonical definition to state claims against.
-/

/-! ## A151231.P14522746988256134477

`∑{#}[n, C(n, #)*A150715(#)]`
-/

namespace A151231.P14522746988256134477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A150715 k

end

end A151231.P14522746988256134477

/-! ## A151231.P14867632031844736033

`(A151253(n)+A150598(n))/2`
-/

namespace A151231.P14867632031844736033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151253 n + A150598 n : ℚ) / 2

end

end A151231.P14867632031844736033

/-! ## A151231.P10306776277684283530

`A090331(A151253(n)+A150598(n))`
-/

namespace A151231.P10306776277684283530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A151253 n + A150598 n).toNat

end

end A151231.P10306776277684283530

/-!
# A151232: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151232, there is no canonical definition to state claims against.
-/

/-! ## A151232.P8356971533405190681

`A151321(n)+A007814(A151161(n))`
-/

namespace A151232.P8356971533405190681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151321 n + A007814 (A151161 n).toNat

end

end A151232.P8356971533405190681

/-! ## A151232.P16712343503845146853

`A174615(A151346(n))+A151321(n)`
-/

namespace A151232.P16712343503845146853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174615 (A151346 n).toNat + A151321 n

end

end A151232.P16712343503845146853

/-!
# A151233: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151233, there is no canonical definition to state claims against.
-/

/-! ## A151233.P9197581615986971095

`∑{#}[n, C(n, #)*A150716(#)]`
-/

namespace A151233.P9197581615986971095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A150716 k

end

end A151233.P9197581615986971095

/-! ## A151233.P9370539046645469202

`A054861(A086347(n))+n+1`
-/

namespace A151233.P9370539046645469202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A086347 n).toNat + (n + 1 : ℤ)

end

end A151233.P9370539046645469202

/-!
# A151234: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A151234, there is no canonical definition to state claims against.
-/

/-! ## A151234.P7547001039425208159

`∑[A248180(Δ[A084157(n)])]`
-/

namespace A151234.P7547001039425208159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151234.P7547001039425208159

/-! ## A151234.P10601189620017833262

`A065033(A086347(n)+A000719(n))`
-/

namespace A151234.P10601189620017833262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A086347 n + A000719 n).toNat

end

end A151234.P10601189620017833262

/-!
# A151235: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151235, there is no canonical definition to state claims against.
-/

/-! ## A151235.P13155736872938201329

`A029578(A151241(n)+A151214(n))`
-/

namespace A151235.P13155736872938201329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A151241 n + A151214 n).toNat

end

end A151235.P13155736872938201329

/-! ## A151235.P15964676807009502057

`A142150(A151241(n)+A151214(n))`
-/

namespace A151235.P15964676807009502057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A151241 n + A151214 n).toNat

end

end A151235.P15964676807009502057

/-!
# A151236: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151236, there is no canonical definition to state claims against.
-/

/-! ## A151236.P15980933348151817567

`A014682(A151241(n)+A151217(n))`
-/

namespace A151236.P15980933348151817567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151241 n + A151217 n).toNat

end

end A151236.P15980933348151817567

/-! ## A151236.P13274645532380273684

`A151217(n)+A004525(A151241(n)-A151217(n))`
-/

namespace A151236.P13274645532380273684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151217 n + A004525 (A151241 n - A151217 n).toNat

end

end A151236.P13274645532380273684

/-!
# A151237: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151237, there is no canonical definition to state claims against.
-/

/-! ## A151237.P5871431437568481207

`A110657(A289847(n)-A289844(n))`
-/

namespace A151237.P5871431437568481207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A289847 n - A289844 n).toNat

end

end A151237.P5871431437568481207

/-! ## A151237.P3181753620878775731

`A110654(or(A000292(n), A017977(n)))`
-/

namespace A151237.P3181753620878775731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.lor (A000292 n) (A017977 n)).toNat

end

end A151237.P3181753620878775731

/-!
# A151238: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151238, there is no canonical definition to state claims against.
-/

/-! ## A151238.P14298201448905901218

`(A151254(n)+A150762(n))/2`
-/

namespace A151238.P14298201448905901218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151254 n + A150762 n : ℚ) / 2

end

end A151238.P14298201448905901218

/-! ## A151238.P505253803843148960

`A014682(A151254(n)+A150762(n))`
-/

namespace A151238.P505253803843148960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151254 n + A150762 n).toNat

end

end A151238.P505253803843148960

/-! ## A151238.P17285542268073961669

`A090331(A151254(n)+A150762(n))`
-/

namespace A151238.P17285542268073961669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A151254 n + A150762 n).toNat

end

end A151238.P17285542268073961669

/-!
# A151239: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151239, there is no canonical definition to state claims against.
-/

/-! ## A151239.P5966381034713803921

`A057365(A151254(n)+A000079(n))`
-/

namespace A151239.P5966381034713803921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A151254 n + A000079 n).toNat

end

end A151239.P5966381034713803921

/-! ## A151239.P4817185063324536314

`A002264(A014132(n+1)+∑[A001412(n)])`
-/

namespace A151239.P4817185063324536314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A014132 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151239.P4817185063324536314

/-!
# A151240: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A151240, there is no canonical definition to state claims against.
-/

/-! ## A151240.P12850491448323691578

`A077172((3+5^n)/2)`
-/

namespace A151240.P12850491448323691578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (SequenceMachineLib.roundAway ((3 + 5 ^ n : ℚ) / 2)).toNat

end

end A151240.P12850491448323691578

/-!
# A151241: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151241, there is no canonical definition to state claims against.
-/

/-! ## A151241.P14420962882480300643

`A004277(A151236(n))-A151217(n)`
-/

namespace A151241.P14420962882480300643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151236 n).toNat - A151217 n

end

end A151241.P14420962882480300643

/-! ## A151241.P3884935868495625469

`dr(A349190(2*n+1))*A000602(2*n+1)`
-/

namespace A151241.P3884935868495625469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A349190 (2 * n + 1)) : ℤ) * A000602 (2 * n + 1)

end

end A151241.P3884935868495625469

/-!
# A151242: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A151242, there is no canonical definition to state claims against.
-/

/-! ## A151242.P9478420570230744406

`A063727(n)+A008611(A000351(n))`
-/

namespace A151242.P9478420570230744406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n + A008611 (A000351 n).toNat

end

end A151242.P9478420570230744406

/-! ## A151242.P9953506338401080108

`A160126(A000108(n))+A000302(n)`
-/

namespace A151242.P9953506338401080108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160126 (A000108 n).toNat + A000302 n

end

end A151242.P9953506338401080108

/-!
# A151243: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (0, 1, 1), (1, 0, 1)}.

The programs for A151243, there is no canonical definition to state claims against.
-/

/-! ## A151243.P14625574695381428853

`∑{#}[n, C(n, #)*A151033(#)]`
-/

namespace A151243.P14625574695381428853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A151033 k

end

end A151243.P14625574695381428853

/-! ## A151243.P7091904942470202226

`A090223(A218134(n)+A145819(n+1))`
-/

namespace A151243.P7091904942470202226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A218134 n + A145819 (n + 1)).toNat

end

end A151243.P7091904942470202226

/-!
# A151244: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151244, there is no canonical definition to state claims against.
-/

/-! ## A151244.P17756481780061778762

`Δ[A173989(∑[A150861(n)])]`
-/

namespace A151244.P17756481780061778762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173989 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151244.P17756481780061778762

/-!
# A151245: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151245, there is no canonical definition to state claims against.
-/

/-! ## A151245.P6729140649519065931

`4*A152467(7*a(n-1))` with `a(0)=1`
-/

namespace A151245.P6729140649519065931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A152467 (7 * a (n - 1)).toNat

end

end A151245.P6729140649519065931

/-! ## A151245.P10268166552568675509

`2^n*A290821(3*n+1)`
-/

namespace A151245.P10268166552568675509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A290821 (3 * n + 1)

end

end A151245.P10268166552568675509

/-!
# A151246: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151246, there is no canonical definition to state claims against.
-/

/-! ## A151246.P13143987157929567354

`A087816(A147722(n+1))`
-/

namespace A151246.P13143987157929567354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087816 (A147722 (n + 1)).toNat

end

end A151246.P13143987157929567354

/-! ## A151246.P13299675022264924131

`record[gcd(A025822(n), A288176(n))]`
-/

namespace A151246.P13299675022264924131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025822 n) (A288176 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151246.P13299675022264924131

/-!
# A151247: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151247, there is no canonical definition to state claims against.
-/

/-! ## A151247.P9948680074201032885

`A065033(A030221(n)+A006527(n))`
-/

namespace A151247.P9948680074201032885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A030221 n + A006527 n).toNat

end

end A151247.P9948680074201032885

/-! ## A151247.P13284660347010622431

`A004396(A151130(n)+A002320(n))`
-/

namespace A151247.P13284660347010622431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151130 n + A002320 n).toNat

end

end A151247.P13284660347010622431

/-!
# A151248: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151248, there is no canonical definition to state claims against.
-/

/-! ## A151248.P4188594804231787036

`∑{#}[n, C(n, #)*A151315(#)]`
-/

namespace A151248.P4188594804231787036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A151315 k

end

end A151248.P4188594804231787036

/-! ## A151248.P3515835563934579989

`A004525(A151249(n)+A151247(n))`
-/

namespace A151248.P3515835563934579989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151249 n + A151247 n).toNat

end

end A151248.P3515835563934579989

/-!
# A151249: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 0, 1), (0, 1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151249, there is no canonical definition to state claims against.
-/

/-! ## A151249.P4427700308255570814

`A097508(∑[A079738(n)+2])`
-/

namespace A151249.P4427700308255570814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079738 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151249.P4427700308255570814

/-! ## A151249.P14867538180006450111

`A002264(A199213(n)+A087945(n))`
-/

namespace A151249.P14867538180006450111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A199213 n + A087945 n).toNat

end

end A151249.P14867538180006450111

/-!
# A151250: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151250, there is no canonical definition to state claims against.
-/

/-! ## A151250.P17501991842283324465

`A327440((5^n-2*3^n+1)/4)+(3^n+5^n)/2`
-/

namespace A151250.P17501991842283324465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327440 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + 1 : ℚ) / 4)).toNat : ℚ) + (3 ^ n + 5 ^ n : ℚ) / 2

end

end A151250.P17501991842283324465

/-! ## A151250.P11055362808726917719

`or(A132275(2*(n+1)), A299905(abs(A168491(n))))`
-/

namespace A151250.P11055362808726917719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132275 (2 * (n + 1))) (A299905 |A168491 n|.toNat)

end

end A151250.P11055362808726917719

/-!
# A151251: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151251, the canonical program `A151251.P10161542240211099548` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151251 has offset 0).

The definition of A151251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151251.P10161542240211099548

`∑{#}[n, C(n, #)*A129637(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151251

/-- `∑{#}[n, C(n, #)*A129637(#)]` -/
def P10161542240211099548.Spec : Prop :=
  ∀ n, P10161542240211099548.a n = A151251 n

theorem P10161542240211099548.correct : P10161542240211099548.Spec := by
  intro n
  simp only [A151251]

end A151251

/-! ## A151251.P10753173776241035838

`∑{#}[n, (-1)^(n-#)*C(n, #)*A134425(#)]`
-/

namespace A151251.P10753173776241035838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A134425 k : ℚ)

end

end A151251.P10753173776241035838

namespace A151251

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A134425(#)]` -/
def P10753173776241035838.Spec : Prop :=
  ∀ n, P10753173776241035838.a n = (A151251 n : ℚ)

end A151251

/-! ## A151251.P4610567728129099566

`A034478(n)+A004524(A151090(n))`
-/

namespace A151251.P4610567728129099566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + A004524 (A151090 n).toNat

end

end A151251.P4610567728129099566

namespace A151251

/-- `A034478(n)+A004524(A151090(n))` -/
def P4610567728129099566.Spec : Prop :=
  ∀ n, P4610567728129099566.a n = A151251 n

end A151251

/-!
# A151252: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151252, there is no canonical definition to state claims against.
-/

/-! ## A151252.P8660011923126933090

`A110654(A164365(n)+A150190(n))`
-/

namespace A151252.P8660011923126933090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A164365 n + A150190 n).toNat

end

end A151252.P8660011923126933090

/-! ## A151252.P6135543487155964888

`A312462(A000982(n)*A003701(n))`
-/

namespace A151252.P6135543487155964888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312462 (A000982 n * A003701 n).toNat

end

end A151252.P6135543487155964888

/-!
# A151253: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151253, the canonical program `A151253.P9431418195808449791` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151253 has offset 0).

The definition of A151253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151253.P9431418195808449791

`∑{#}[n, C(n, #)*A151162(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151253

/-- `∑{#}[n, C(n, #)*A151162(#)]` -/
def P9431418195808449791.Spec : Prop :=
  ∀ n, P9431418195808449791.a n = A151253 n

theorem P9431418195808449791.correct : P9431418195808449791.Spec := by
  intro n
  simp only [A151253]

end A151253

/-! ## A151253.P8722685883140429107

`2*A151231(n)-A150598(n)`
-/

namespace A151253.P8722685883140429107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151231 n - A150598 n

end

end A151253.P8722685883140429107

namespace A151253

/-- `2*A151231(n)-A150598(n)` -/
def P8722685883140429107.Spec : Prop :=
  ∀ n, P8722685883140429107.a n = A151253 n

end A151253

/-! ## A151253.P7119173268548473769

`A004277(A151231(n))-A150598(n)`
-/

namespace A151253.P7119173268548473769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151231 n).toNat - A150598 n

end

end A151253.P7119173268548473769

namespace A151253

/-- `A004277(A151231(n))-A150598(n)` -/
def P7119173268548473769.Spec : Prop :=
  ∀ n, P7119173268548473769.a n = A151253 n

end A151253

/-!
# A151254: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A151254, the canonical program `A151254.P14869212094467663028` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151254 has offset 0).

The definition of A151254 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151254.P14869212094467663028

`∑{#}[n, A120730(C(n+1, 2)+#)*4^#]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A151254

/-- `∑{#}[n, A120730(C(n+1, 2)+#)*4^#]` -/
def P14869212094467663028.Spec : Prop :=
  ∀ n, P14869212094467663028.a n = A151254 n

theorem P14869212094467663028.correct : P14869212094467663028.Spec := by
  intro n
  simp only [A151254]

end A151254

/-! ## A151254.P6110492422463932999

`2^n*A054341(n)`
-/

namespace A151254.P6110492422463932999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054341 n

end

end A151254.P6110492422463932999

namespace A151254

/-- `2^n*A054341(n)` -/
def P6110492422463932999.Spec : Prop :=
  ∀ n, P6110492422463932999.a n = A151254 n

end A151254

/-! ## A151254.P16330674400404190686

`2^(n-1)*A100087(n+1)`
-/

namespace A151254.P16330674400404190686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A100087 (n + 1) : ℚ)

end

end A151254.P16330674400404190686

namespace A151254

/-- `2^(n-1)*A100087(n+1)` -/
def P16330674400404190686.Spec : Prop :=
  ∀ n, P16330674400404190686.a n = (A151254 n : ℚ)

end A151254

/-! ## A151254.P8249899006689761985

`A054341(n)*A166444(n+2)`
-/

namespace A151254.P8249899006689761985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 n * A166444 (n + 2)

end

end A151254.P8249899006689761985

namespace A151254

/-- `A054341(n)*A166444(n+2)` -/
def P8249899006689761985.Spec : Prop :=
  ∀ n, P8249899006689761985.a n = A151254 n

end A151254

/-! ## A151254.P15279527011199299803

`A000079(n)*A126075(∑[n])`
-/

namespace A151254.P15279527011199299803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A126075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151254.P15279527011199299803

namespace A151254

/-- `A000079(n)*A126075(∑[n])` -/
def P15279527011199299803.Spec : Prop :=
  ∀ n, P15279527011199299803.a n = A151254 n

end A151254

/-! ## A151254.P15446239854123387622

`record[A126075(n)]*A000079(n)`
-/

namespace A151254.P15446239854123387622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A151254.P15446239854123387622

namespace A151254

/-- `record[A126075(n)]*A000079(n)` -/
def P15446239854123387622.Spec : Prop :=
  ∀ n, P15446239854123387622.a n = A151254 n

end A151254

/-! ## A151254.P2740892562112734352

`record[A036561(n)*A126075(n)]`
-/

namespace A151254.P2740892562112734352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A126075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151254.P2740892562112734352

namespace A151254

/-- `record[A036561(n)*A126075(n)]` -/
def P2740892562112734352.Spec : Prop :=
  ∀ n, P2740892562112734352.a n = A151254 n

end A151254

/-! ## A151254.P11965064145040103005

`record[A126075(n)*A130321(n)]`
-/

namespace A151254.P11965064145040103005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 n * A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151254.P11965064145040103005

namespace A151254

/-- `record[A126075(n)*A130321(n)]` -/
def P11965064145040103005.Spec : Prop :=
  ∀ n, P11965064145040103005.a n = A151254 n

end A151254

/-! ## A151254.P6917871325269480408

`record[A126075(n)*A137688(n)]`
-/

namespace A151254.P6917871325269480408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 n * A137688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151254.P6917871325269480408

namespace A151254

/-- `record[A126075(n)*A137688(n)]` -/
def P6917871325269480408.Spec : Prop :=
  ∀ n, P6917871325269480408.a n = A151254 n

end A151254

/-! ## A151254.P16422643980775301560

`record[A126075(n)]*A038207(∑[n])`
-/

namespace A151254.P16422643980775301560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A038207 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A151254.P16422643980775301560

namespace A151254

/-- `record[A126075(n)]*A038207(∑[n])` -/
def P16422643980775301560.Spec : Prop :=
  ∀ n, P16422643980775301560.a n = A151254 n

end A151254

/-! ## A151254.P11019774168309640281

`A126075(∑[n])*A166444(n+2)`
-/

namespace A151254.P11019774168309640281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126075 (∑ j ∈ Finset.range (n + 1), f1 j) * A166444 (n + 2)

end

end A151254.P11019774168309640281

namespace A151254

/-- `A126075(∑[n])*A166444(n+2)` -/
def P11019774168309640281.Spec : Prop :=
  ∀ n, P11019774168309640281.a n = A151254 n

end A151254

/-!
# A151255: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (1, 0)}.

The programs for A151255, there is no canonical definition to state claims against.
-/

/-! ## A151255.P5281881537438483529

`∑{#}[n, (-1)^(n-#)*C(n, #)*A149854(#)]`
-/

namespace A151255.P5281881537438483529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A149854 k : ℚ)

end

end A151255.P5281881537438483529

/-! ## A151255.P8730106700761846562

`A004277(A148045(n))-A148060(n)`
-/

namespace A151255.P8730106700761846562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148045 n).toNat - A148060 n

end

end A151255.P8730106700761846562

/-! ## A151255.P15616983075483151604

`A008619(A147999(n)+A107373(n+1))`
-/

namespace A151255.P15616983075483151604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A147999 n + A107373 (n + 1)).toNat

end

end A151255.P15616983075483151604

/-! ## A151255.P10406476703017530131

`A110654(A147999(n)+A107373(n+1))`
-/

namespace A151255.P10406476703017530131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A147999 n + A107373 (n + 1)).toNat

end

end A151255.P10406476703017530131

/-!
# A151256: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1)}.

The programs for A151256, there is no canonical definition to state claims against.
-/

/-! ## A151256.P13388816241884846771

`∑{#}[n, (-1)^(n-#)*C(n, #)*A149880(#)]`
-/

namespace A151256.P13388816241884846771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A149880 k : ℚ)

end

end A151256.P13388816241884846771

/-! ## A151256.P7495654283130756155

`A208126(n)+A014025(A386231(n))`
-/

namespace A151256.P7495654283130756155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208126 n + A014025 (A386231 n).toNat

end

end A151256.P7495654283130756155

/-! ## A151256.P3168269897551260747

`A210478(n)-A001899(A022558(n))`
-/

namespace A151256.P3168269897551260747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210478 n - A001899 (A022558 n).toNat

end

end A151256.P3168269897551260747

/-! ## A151256.P14402249337481849962

`A208453(n)-A056626(A001710(n))`
-/

namespace A151256.P14402249337481849962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208453 n - A056626 (A001710 n).toNat

end

end A151256.P14402249337481849962

/-!
# A151257: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1)}.

The programs for A151257, there is no canonical definition to state claims against.
-/

/-! ## A151257.P15354546934889453368

`∑{#}[n, (-1)^(n-#)*C(n, #)*A149883(#)]`
-/

namespace A151257.P15354546934889453368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A149883 k : ℚ)

end

end A151257.P15354546934889453368

/-!
# A151258: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1)}.

The programs for A151258, there is no canonical definition to state claims against.
-/

/-! ## A151258.P3466123038824810883

`∑{#}[n, (-1)^(n-#)*C(n, #)*A149892(#)]`
-/

namespace A151258.P3466123038824810883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A149892 k : ℚ)

end

end A151258.P3466123038824810883

/-!
# A151259: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, 1), (1, -1)}.

The programs for A151259, there is no canonical definition to state claims against.
-/

/-! ## A151259.P15772820927583125569

`∑{#}[n, (-1)^(n-#)*C(n, #)*A149951(#)]`
-/

namespace A151259.P15772820927583125569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A149951 k : ℚ)

end

end A151259.P15772820927583125569

/-! ## A151259.P6166747949417640547

`A008621(A008621(∑[∑[3^n]+2]))`
-/

namespace A151259.P6166747949417640547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A008621 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A151259.P6166747949417640547

/-! ## A151259.P13679198144391436404

`A036765(n)+A014036(A200075(n))`
-/

namespace A151259.P13679198144391436404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036765 n + A014036 (A200075 n).toNat

end

end A151259.P13679198144391436404

/-! ## A151259.P1059301009930112084

`A226190(A122983(n)+A003056(n))`
-/

namespace A151259.P1059301009930112084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A122983 n + A003056 n).toNat

end

end A151259.P1059301009930112084

/-!
# A151260: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, -1)}.

The programs for A151260, there is no canonical definition to state claims against.
-/

/-! ## A151260.P676603681869499096

`A276216(A148201(n))`
-/

namespace A151260.P676603681869499096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276216 (A148201 n).toNat

end

end A151260.P676603681869499096

/-! ## A151260.P9422949398416129564

`A058094(n)-A278520(A150352(n))`
-/

namespace A151260.P9422949398416129564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058094 n - A278520 (A150352 n).toNat

end

end A151260.P9422949398416129564

/-! ## A151260.P11844557024939170372

`A135646(A148915(n))`
-/

namespace A151260.P11844557024939170372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A148915 n).toNat

end

end A151260.P11844557024939170372

/-!
# A151261: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (1, 0)}.

The programs for A151261, there is no canonical definition to state claims against.
-/

/-! ## A151261.P1082321958356404162

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150044(#)]`
-/

namespace A151261.P1082321958356404162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150044 k : ℚ)

end

end A151261.P1082321958356404162

/-!
# A151262: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, -1)}.

The programs for A151262, there is no canonical definition to state claims against.
-/

/-! ## A151262.P2422492827481839025

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150084(#)]`
-/

namespace A151262.P2422492827481839025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150084 k : ℚ)

end

end A151262.P2422492827481839025

/-! ## A151262.P7975458406363566414

`A005590(A101077(n+1))+A000108(n)`
-/

namespace A151262.P7975458406363566414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A101077 (n + 1)).toNat + A000108 n

end

end A151262.P7975458406363566414

/-! ## A151262.P12011891534366426834

`A048865(A150031(n))+A002260(n+1)`
-/

namespace A151262.P12011891534366426834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A150031 n).toNat + A002260 (n + 1)

end

end A151262.P12011891534366426834

/-!
# A151264: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (1, -1), (1, 0)}.

The programs for A151264, there is no canonical definition to state claims against.
-/

/-! ## A151264.P12560884050186497687

`or(A112505(A126087(n)), A148624(n))`
-/

namespace A151264.P12560884050186497687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112505 (A126087 n).toNat) (A148624 n)

end

end A151264.P12560884050186497687

/-! ## A151264.P12598360414133334321

`or(A112505(A126087(n)), A148629(n))`
-/

namespace A151264.P12598360414133334321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A112505 (A126087 n).toNat) (A148629 n)

end

end A151264.P12598360414133334321

/-! ## A151264.P11785480935606758084

`A148615(n)+A014057(A151242(n))`
-/

namespace A151264.P11785480935606758084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148615 n + A014057 (A151242 n).toNat

end

end A151264.P11785480935606758084

/-!
# A151265: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (1, 1)}.

The programs for A151265, there is no canonical definition to state claims against.
-/

/-! ## A151265.P3772621548875207124

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150120(#)]`
-/

namespace A151265.P3772621548875207124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150120 k : ℚ)

end

end A151265.P3772621548875207124

/-! ## A151265.P656832450526631652

`A335570(∑[n+3])`
-/

namespace A151265.P656832450526631652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151265.P656832450526631652

/-! ## A151265.P6112250619223387389

`A335570(A133263(n)+A016777(n))+A008586(n)%2`
-/

namespace A151265.P6112250619223387389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A133263 n + A016777 n).toNat + Int.tmod (A008586 n) 2

end

end A151265.P6112250619223387389

/-! ## A151265.P2336380654610063104

`A335570(A133263(n)+A016777(n))+2%A033999(n)`
-/

namespace A151265.P2336380654610063104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A133263 n + A016777 n).toNat + Int.tmod 2 (A033999 n)

end

end A151265.P2336380654610063104

/-! ## A151265.P13542505437484880524

`(n-A023443(n))*A335570(A133263(n)+A016777(n))`
-/

namespace A151265.P13542505437484880524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 n) * A335570 (A133263 n + A016777 n).toNat

end

end A151265.P13542505437484880524

/-! ## A151265.P4120248390663746646

`A335570(A133263(n)+A016777(n))+A126120(2*n+1)`
-/

namespace A151265.P4120248390663746646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A133263 n + A016777 n).toNat + A126120 (2 * n + 1)

end

end A151265.P4120248390663746646

/-! ## A151265.P17954979694574362820

`A008619(4*n)%2*A335570(A133263(n)+A016777(n))`
-/

namespace A151265.P17954979694574362820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (4 * n)) 2 * A335570 (A133263 n + A016777 n).toNat

end

end A151265.P17954979694574362820

/-!
# A151266: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (1, -1), (1, 1)}.

The programs for A151266, there is no canonical definition to state claims against.
-/

/-! ## A151266.P16677011074765038514

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150125(#)]`
-/

namespace A151266.P16677011074765038514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150125 k : ℚ)

end

end A151266.P16677011074765038514

/-! ## A151266.P2748114716106659832

`A052948(n)-A081153(A081172(n))`
-/

namespace A151266.P2748114716106659832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n - A081153 (A081172 n).toNat

end

end A151266.P2748114716106659832

/-! ## A151266.P12304735015724750270

`A052948(n)-A221408(A247584(n))`
-/

namespace A151266.P12304735015724750270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n - A221408 (A247584 n).toNat

end

end A151266.P12304735015724750270

/-!
# A151267: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (1, -1), (1, 1)}.

The programs for A151267, there is no canonical definition to state claims against.
-/

/-! ## A151267.P9921825605242684444

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150131(#)]`
-/

namespace A151267.P9921825605242684444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150131 k : ℚ)

end

end A151267.P9921825605242684444

/-! ## A151267.P15029555914409134102

`C(p?[A134574(2*(n+1))], floor(n/2))`
-/

namespace A151267.P15029555914409134102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134574 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ⌊(n : ℚ) / 2⌋.toNat

end

end A151267.P15029555914409134102

/-! ## A151267.P14718225276052427540

`C(p?[A185651(2*n+1)], floor(n/2))`
-/

namespace A151267.P14718225276052427540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ⌊(n : ℚ) / 2⌋.toNat

end

end A151267.P14718225276052427540

/-!
# A151269: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, -1), (0, 1), (1, -1)}.

The programs for A151269, there is no canonical definition to state claims against.
-/

/-! ## A151269.P15268127796327528229

`A024417(A149753(n)+1)`
-/

namespace A151269.P15268127796327528229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149753 n + 1).toNat

end

end A151269.P15268127796327528229

/-! ## A151269.P5724569597343818292

`A148729(n)+A011723(A137983(n))`
-/

namespace A151269.P5724569597343818292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148729 n + A011723 (A137983 n).toNat

end

end A151269.P5724569597343818292

/-!
# A151270: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (1, 1)}.

The programs for A151270, there is no canonical definition to state claims against.
-/

/-! ## A151270.P10251700787784773555

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150453(#)]`
-/

namespace A151270.P10251700787784773555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150453 k : ℚ)

end

end A151270.P10251700787784773555

/-! ## A151270.P326098994998090582

`A357636(ceil(2^(n-1))-A000078(n))`
-/

namespace A151270.P326098994998090582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A000078 n).toNat

end

end A151270.P326098994998090582

/-! ## A151270.P5696314091267246486

`A126257(A036378(n)+A000778(n))`
-/

namespace A151270.P5696314091267246486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A036378 n + A000778 n).toNat

end

end A151270.P5696314091267246486

/-!
# A151271: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (1, -1), (1, 1)}.

The programs for A151271, there is no canonical definition to state claims against.
-/

/-! ## A151271.P1509043914749450416

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150459(#)]`
-/

namespace A151271.P1509043914749450416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150459 k : ℚ)

end

end A151271.P1509043914749450416

/-! ## A151271.P9702801737937938691

`A053574(n+1)+A007306(A352307(n))`
-/

namespace A151271.P9702801737937938691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (n + 1) + A007306 (A352307 n).toNat

end

end A151271.P9702801737937938691

/-! ## A151271.P897860952586992954

`A157271(A234009(n+1)+A149078(n))`
-/

namespace A151271.P897860952586992954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A234009 (n + 1) + A149078 n).toNat

end

end A151271.P897860952586992954

/-!
# A151272: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (1, -1), (1, 1)}.

The programs for A151272, there is no canonical definition to state claims against.
-/

/-! ## A151272.P10870742366090797038

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150594(#)]`
-/

namespace A151272.P10870742366090797038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150594 k : ℚ)

end

end A151272.P10870742366090797038

/-! ## A151272.P11861664932572502670

`A100196(2*A151382(n))`
-/

namespace A151272.P11861664932572502670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (2 * A151382 n).toNat

end

end A151272.P11861664932572502670

/-! ## A151272.P18229821197389453287

`A218654(A002001(n+1))+∑{digits}[n, val(#+1, 7)]`
-/

namespace A151272.P18229821197389453287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A002001 (n + 1)).toNat + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 7).sum : ℕ) : ℤ)

end

end A151272.P18229821197389453287

/-!
# A151273: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (1, -1), (1, 1)}.

The programs for A151273, there is no canonical definition to state claims against.
-/

/-! ## A151273.P3551352152654556793

`∑{#}[n, (-1)^(n-#)*C(n, #)*A150630(#)]`
-/

namespace A151273.P3551352152654556793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A150630 k : ℚ)

end

end A151273.P3551352152654556793

/-! ## A151273.P12949733616313571939

`A087805(A007098(n))`
-/

namespace A151273.P12949733616313571939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A007098 n).toNat

end

end A151273.P12949733616313571939

/-!
# A151274: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (1, -1), (1, 1)}.

The programs for A151274, there is no canonical definition to state claims against.
-/

/-! ## A151274.P4715344036635897728

`A004525(A149540(n)+A149533(n))`
-/

namespace A151274.P4715344036635897728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149540 n + A149533 n).toNat

end

end A151274.P4715344036635897728

/-! ## A151274.P1960812583235642651

`A004526(A149540(n)+A149533(n))`
-/

namespace A151274.P1960812583235642651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149540 n + A149533 n).toNat

end

end A151274.P1960812583235642651

/-! ## A151274.P3533736843901619492

`A026741(A149540(n)+A149533(n))`
-/

namespace A151274.P3533736843901619492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149540 n + A149533 n).toNat

end

end A151274.P3533736843901619492

/-! ## A151274.P1515652922073271668

`A029578(A149540(n)+A149533(n))`
-/

namespace A151274.P1515652922073271668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A149540 n + A149533 n).toNat

end

end A151274.P1515652922073271668

/-!
# A151275: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (1, -1), (1, 1)}.

The programs for A151275, there is no canonical definition to state claims against.
-/

/-! ## A151275.P11410605881981638414

`A171561(A052528(n))`
-/

namespace A151275.P11410605881981638414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A052528 n).toNat

end

end A151275.P11410605881981638414

/-! ## A151275.P14630139765377761690

`A171561(A058855(n))`
-/

namespace A151275.P14630139765377761690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A058855 n).toNat

end

end A151275.P14630139765377761690

/-!
# A151276: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, -1), (1, -1), (1, 1)}.

The programs for A151276, there is no canonical definition to state claims against.
-/

/-! ## A151276.P13517206632878553327

`A004525(A149711(n)+A149686(n))`
-/

namespace A151276.P13517206632878553327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149711 n + A149686 n).toNat

end

end A151276.P13517206632878553327

/-! ## A151276.P3902564548788743004

`A004526(A149711(n)+A149686(n))`
-/

namespace A151276.P3902564548788743004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149711 n + A149686 n).toNat

end

end A151276.P3902564548788743004

/-! ## A151276.P1282816466134609782

`A026741(A149711(n)+A149686(n))`
-/

namespace A151276.P1282816466134609782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A149711 n + A149686 n).toNat

end

end A151276.P1282816466134609782

/-!
# A151277: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, -1), (1, -1), (1, 1)}.

The programs for A151277, there is no canonical definition to state claims against.
-/

/-! ## A151277.P7630370769205947298

`A289498(A003463(n+1)+n)`
-/

namespace A151277.P7630370769205947298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A003463 (n + 1) + (n : ℤ)).toNat

end

end A151277.P7630370769205947298

/-! ## A151277.P2578551867939048994

`A295559(A210996(n))+A004524(n)`
-/

namespace A151277.P2578551867939048994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295559 (A210996 n).toNat + A004524 n

end

end A151277.P2578551867939048994

/-!
# A151278: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (0, 1), (1, 0)}.

The programs for A151278, there is no canonical definition to state claims against.
-/

/-! ## A151278.P6584290892460961862

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151030(#)]`
-/

namespace A151278.P6584290892460961862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151030 k : ℚ)

end

end A151278.P6584290892460961862

/-! ## A151278.P6816557790851475589

`A189912(n)+A083918(A125224(n)+A000196(n))`
-/

namespace A151278.P6816557790851475589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189912 n + A083918 (A125224 n + A000196 n).toNat

end

end A151278.P6816557790851475589

/-! ## A151278.P3151364029733197273

`∑[A322327(A005867(n))]`
-/

namespace A151278.P3151364029733197273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322327 (A005867 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151278.P3151364029733197273

/-!
# A151279: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, 0)}.

The programs for A151279, there is no canonical definition to state claims against.
-/

/-! ## A151279.P17691865412180895557

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151052(#)]`
-/

namespace A151279.P17691865412180895557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151052 k : ℚ)

end

end A151279.P17691865412180895557

/-! ## A151279.P5377841539269264621

`A248180(A199104(n+1))`
-/

namespace A151279.P5377841539269264621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A199104 (n + 1)).toNat

end

end A151279.P5377841539269264621

/-! ## A151279.P9360426965289290316

`A247911(A394951(n+1))`
-/

namespace A151279.P9360426965289290316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A394951 (n + 1)).toNat

end

end A151279.P9360426965289290316

/-!
# A151280: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, 0)}.

The programs for A151280, there is no canonical definition to state claims against.
-/

/-! ## A151280.P14658172523988809888

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151055(#)]`
-/

namespace A151280.P14658172523988809888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151055 k : ℚ)

end

end A151280.P14658172523988809888

/-! ## A151280.P4088655279088925921

`A002264(A046722(n+3))+A001402(n)`
-/

namespace A151280.P4088655279088925921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046722 (n + 3)).toNat + A001402 n

end

end A151280.P4088655279088925921

/-! ## A151280.P1349668389067472557

`A058495(n+1)+C(n, 5)`
-/

namespace A151280.P1349668389067472557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058495 (n + 1) + (Nat.choose n 5 : ℤ)

end

end A151280.P1349668389067472557

/-!
# A151281: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (1, 0), (1, 1)}.

The programs for A151281, the canonical program `A151281.P1016941325909575643` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151281 has offset 0).

The definition of A151281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A151281.P1016941325909575643

`∑{#}[n, A120730(C(n+1, 2)+#)*2^#]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A151281

/-- `∑{#}[n, A120730(C(n+1, 2)+#)*2^#]` -/
def P1016941325909575643.Spec : Prop :=
  ∀ n, P1016941325909575643.a n = A151281 n

theorem P1016941325909575643.correct : P1016941325909575643.Spec := by
  intro n
  simp only [A151281]

end A151281

/-! ## A151281.P6202708351492696930

`(A126087(n)+A000244(n))/2`
-/

namespace A151281.P6202708351492696930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126087 n + A000244 n : ℚ) / 2

end

end A151281.P6202708351492696930

namespace A151281

/-- `(A126087(n)+A000244(n))/2` -/
def P6202708351492696930.Spec : Prop :=
  ∀ n, P6202708351492696930.a n = (A151281 n : ℚ)

end A151281

/-! ## A151281.P10379678711169112049

`∑{#}[n, (-1)^(n-#)*C(n, #)*A129637(#)]`
-/

namespace A151281.P10379678711169112049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A129637 k : ℚ)

end

end A151281.P10379678711169112049

namespace A151281

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A129637(#)]` -/
def P10379678711169112049.Spec : Prop :=
  ∀ n, P10379678711169112049.a n = (A151281 n : ℚ)

end A151281

/-! ## A151281.P8948067761056148095

`A003462(n)+A001057(A126087(n))`
-/

namespace A151281.P8948067761056148095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A001057 (A126087 n).toNat

end

end A151281.P8948067761056148095

namespace A151281

/-- `A003462(n)+A001057(A126087(n))` -/
def P8948067761056148095.Spec : Prop :=
  ∀ n, P8948067761056148095.a n = A151281 n

end A151281

/-! ## A151281.P18030182353363852895

`A318518(A126087(n)+A000244(n))`
-/

namespace A151281.P18030182353363852895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A126087 n + A000244 n).toNat

end

end A151281.P18030182353363852895

namespace A151281

/-- `A318518(A126087(n)+A000244(n))` -/
def P18030182353363852895.Spec : Prop :=
  ∀ n, P18030182353363852895.a n = A151281 n

end A151281

/-!
# A151282: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, 1)}.

The programs for A151282, the canonical program `A151282.P14303387688788959172` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151282 has offset 0).

The definition of A151282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151282.P14303387688788959172

`∑{#}[n, C(n, #)*A126087(#)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151282

/-- `∑{#}[n, C(n, #)*A126087(#)]` -/
def P14303387688788959172.Spec : Prop :=
  ∀ n, P14303387688788959172.a n = A151282 n

theorem P14303387688788959172.correct : P14303387688788959172.Spec := by
  intro n
  simp only [A151282]

end A151282

/-! ## A151282.P7770094634276859994

`4*a(n-1)-A014431(n+1)` with `a(0)=1`
-/

namespace A151282.P7770094634276859994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A014431 (n + 1)

end

end A151282.P7770094634276859994

namespace A151282

/-- `4*a(n-1)-A014431(n+1)` -/
def P7770094634276859994.Spec : Prop :=
  ∀ n, P7770094634276859994.a n = A151282 n

end A151282

/-! ## A151282.P1593883816038992370

`2*A129637(n)-A000302(n)`
-/

namespace A151282.P1593883816038992370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - A000302 n

end

end A151282.P1593883816038992370

namespace A151282

/-- `2*A129637(n)-A000302(n)` -/
def P1593883816038992370.Spec : Prop :=
  ∀ n, P1593883816038992370.a n = A151282 n

end A151282

/-! ## A151282.P12674099014163683774

`2*A129637(n)-A000079(n)²`
-/

namespace A151282.P12674099014163683774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - A000079 n ^ 2

end

end A151282.P12674099014163683774

namespace A151282

/-- `2*A129637(n)-A000079(n)²` -/
def P12674099014163683774.Spec : Prop :=
  ∀ n, P12674099014163683774.a n = A151282 n

end A151282

/-! ## A151282.P1732861247900733589

`2*A129637(n)-A000079(2*n)`
-/

namespace A151282.P1732861247900733589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - A000079 (2 * n)

end

end A151282.P1732861247900733589

namespace A151282

/-- `2*A129637(n)-A000079(2*n)` -/
def P1732861247900733589.Spec : Prop :=
  ∀ n, P1732861247900733589.a n = A151282 n

end A151282

/-! ## A151282.P15734331607881955461

`2*A129637(n)-Δ[A000225(n)]²`
-/

namespace A151282.P15734331607881955461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - (f1 (n + 1) - f1 n) ^ 2

end

end A151282.P15734331607881955461

namespace A151282

/-- `2*A129637(n)-Δ[A000225(n)]²` -/
def P15734331607881955461.Spec : Prop :=
  ∀ n, P15734331607881955461.a n = A151282 n

end A151282

/-! ## A151282.P10204196261140886360

`2*A129637(n)-record[A084623(n+1)]`
-/

namespace A151282.P10204196261140886360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151282.P10204196261140886360

namespace A151282

/-- `2*A129637(n)-record[A084623(n+1)]` -/
def P10204196261140886360.Spec : Prop :=
  ∀ n, P10204196261140886360.a n = A151282 n

end A151282

/-! ## A151282.P274198028601862619

`2*A129637(n)-A084623(A005408(n))`
-/

namespace A151282.P274198028601862619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - A084623 (A005408 n).toNat

end

end A151282.P274198028601862619

namespace A151282

/-- `2*A129637(n)-A084623(A005408(n))` -/
def P274198028601862619.Spec : Prop :=
  ∀ n, P274198028601862619.a n = A151282 n

end A151282

/-! ## A151282.P6427539507923024675

`2*A129637(n)-A084623(record[A004442(n)])`
-/

namespace A151282.P6427539507923024675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129637 n - A084623 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A151282.P6427539507923024675

namespace A151282

/-- `2*A129637(n)-A084623(record[A004442(n)])` -/
def P6427539507923024675.Spec : Prop :=
  ∀ n, P6427539507923024675.a n = A151282 n

end A151282

/-! ## A151282.P665376095937664527

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151090(#)]`
-/

namespace A151282.P665376095937664527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151090 k : ℚ)

end

end A151282.P665376095937664527

namespace A151282

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A151090(#)]` -/
def P665376095937664527.Spec : Prop :=
  ∀ n, P665376095937664527.a n = (A151282 n : ℚ)

end A151282

/-!
# A151283: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1), (1, 0)}.

The programs for A151283, there is no canonical definition to state claims against.
-/

/-! ## A151283.P11276107843242032424

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151105(#)]`
-/

namespace A151283.P11276107843242032424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151105 k : ℚ)

end

end A151283.P11276107843242032424

/-! ## A151283.P12186756993811033173

`A002266(6*A149960(n))`
-/

namespace A151283.P12186756993811033173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (6 * A149960 n).toNat

end

end A151283.P12186756993811033173

/-! ## A151283.P16165194520741767273

`A171181(A000984(n))+A081696(n)`
-/

namespace A151283.P16165194520741767273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A000984 n).toNat + A081696 n

end

end A151283.P16165194520741767273

/-!
# A151284: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151284, there is no canonical definition to state claims against.
-/

/-! ## A151284.P6210650108678684866

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151128(#)]`
-/

namespace A151284.P6210650108678684866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151128 k : ℚ)

end

end A151284.P6210650108678684866

/-! ## A151284.P6166093775743165047

`or(A052928(A119373(n)), A131733(n+1))`
-/

namespace A151284.P6166093775743165047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052928 (A119373 n).toNat) (A131733 (n + 1))

end

end A151284.P6166093775743165047

/-! ## A151284.P1697938856992737638

`A194509(A054114(n))`
-/

namespace A151284.P1697938856992737638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A054114 n).toNat

end

end A151284.P1697938856992737638

/-!
# A151285: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, 0)}.

The programs for A151285, there is no canonical definition to state claims against.
-/

/-! ## A151285.P11752825451489689132

`A026741(A150130(n)+A150123(n))`
-/

namespace A151285.P11752825451489689132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A150130 n + A150123 n).toNat

end

end A151285.P11752825451489689132

/-! ## A151285.P10901183940227529117

`A065033(A150130(n)+A150123(n))`
-/

namespace A151285.P10901183940227529117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150130 n + A150123 n).toNat

end

end A151285.P10901183940227529117

/-! ## A151285.P4179543464587028476

`A078898(A150130(n)+A150123(n))`
-/

namespace A151285.P4179543464587028476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A150130 n + A150123 n).toNat

end

end A151285.P4179543464587028476

/-! ## A151285.P15180246874517411229

`A166514(A150130(n)+A150123(n))`
-/

namespace A151285.P15180246874517411229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A150130 n + A150123 n).toNat

end

end A151285.P15180246874517411229

/-!
# A151287: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1), (1, 0)}.

The programs for A151287, there is no canonical definition to state claims against.
-/

/-! ## A151287.P3539755652780836849

`A134119(A006512(n+1)+A265939(n)-1)`
-/

namespace A151287.P3539755652780836849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A006512 (n + 1) + (A265939 n - 1)).toNat

end

end A151287.P3539755652780836849

/-! ## A151287.P3757472437097752872

`A134119(A006512(n+1))+A134119(A265939(n))`
-/

namespace A151287.P3757472437097752872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A006512 (n + 1)).toNat + A134119 (A265939 n).toNat

end

end A151287.P3757472437097752872

/-!
# A151288: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151288, there is no canonical definition to state claims against.
-/

/-! ## A151288.P10612602966340405619

`A076897(A299501(n))`
-/

namespace A151288.P10612602966340405619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076897 (A299501 n).toNat

end

end A151288.P10612602966340405619

/-! ## A151288.P7501120084531080742

`A007614(A149358(n+1))`
-/

namespace A151288.P7501120084531080742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A149358 (n + 1)).toNat

end

end A151288.P7501120084531080742

/-! ## A151288.P14224015155637620540

`A032742(A150251(n)+A150240(n))`
-/

namespace A151288.P14224015155637620540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A150251 n + A150240 n).toNat

end

end A151288.P14224015155637620540

/-!
# A151289: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (1, 0), (1, 1)}.

The programs for A151289, there is no canonical definition to state claims against.
-/

/-! ## A151289.P6937091365082567278

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151173(#)]`
-/

namespace A151289.P6937091365082567278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151173 k : ℚ)

end

end A151289.P6937091365082567278

/-! ## A151289.P13713937302600295949

`A030350(A150747(n+1))`
-/

namespace A151289.P13713937302600295949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030350 (A150747 (n + 1)).toNat

end

end A151289.P13713937302600295949

/-!
# A151290: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, 1)}.

The programs for A151290, there is no canonical definition to state claims against.
-/

/-! ## A151290.P16879682647060906071

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151182(#)]`
-/

namespace A151290.P16879682647060906071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151182 k : ℚ)

end

end A151290.P16879682647060906071

/-! ## A151290.P14226231939943168950

`A276797(A134770(n)+1)`
-/

namespace A151290.P14226231939943168950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (A134770 n + 1).toNat

end

end A151290.P14226231939943168950

/-! ## A151290.P6693392957760576826

`A276797(2*A134760(n))`
-/

namespace A151290.P6693392957760576826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (2 * A134760 n).toNat

end

end A151290.P6693392957760576826

/-!
# A151291: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (1, -1), (1, 0), (1, 1)}.

The programs for A151291, there is no canonical definition to state claims against.
-/

/-! ## A151291.P12514257756098869542

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151184(#)]`
-/

namespace A151291.P12514257756098869542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151184 k : ℚ)

end

end A151291.P12514257756098869542

/-! ## A151291.P17764420822627676858

`A262868(A086512(n+1)+A001834(n))`
-/

namespace A151291.P17764420822627676858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A086512 (n + 1) + A001834 n).toNat

end

end A151291.P17764420822627676858

/-! ## A151291.P14287366774942953729

`A262868(A109812(n+1)+A001834(n))`
-/

namespace A151291.P14287366774942953729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A109812 (n + 1) + A001834 n).toNat

end

end A151291.P14287366774942953729

/-!
# A151292: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, 1)}.

The programs for A151292, the canonical program `A151292.P14289417684748015023` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151292 has offset 0).

The definition of A151292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151292.P7517755725764411943

`∑{#}[n, C(n, #)*A128386(#)]`
-/

namespace A151292.P7517755725764411943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A128386 k

end

end A151292.P7517755725764411943

namespace A151292

/-- `∑{#}[n, C(n, #)*A128386(#)]` -/
def P7517755725764411943.Spec : Prop :=
  ∀ n, P7517755725764411943.a n = A151292 n

end A151292

/-! ## A151292.P14289417684748015023

`5*a(n-1)-A014432(n)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151292

/-- `5*a(n-1)-A014432(n)` -/
def P14289417684748015023.Spec : Prop :=
  ∀ n, P14289417684748015023.a n = A151292 n

theorem P14289417684748015023.correct : P14289417684748015023.Spec := by
  intro n
  simp only [A151292]

end A151292

/-! ## A151292.P4899256353380024649

`A008621(A074605(n)-A211096(n))`
-/

namespace A151292.P4899256353380024649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A074605 n - A211096 n).toNat

end

end A151292.P4899256353380024649

namespace A151292

/-- `A008621(A074605(n)-A211096(n))` -/
def P4899256353380024649.Spec : Prop :=
  ∀ n, P4899256353380024649.a n = A151292 n

end A151292

/-!
# A151293: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1), (1, 1)}.

The programs for A151293, there is no canonical definition to state claims against.
-/

/-! ## A151293.P6036423384785695967

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151191(#)]`
-/

namespace A151293.P6036423384785695967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151191 k : ℚ)

end

end A151293.P6036423384785695967

/-! ## A151293.P4124193702891049975

`A070548(A066982(n+1)+A057552(n))`
-/

namespace A151293.P4124193702891049975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A066982 (n + 1) + A057552 n).toNat

end

end A151293.P4124193702891049975

/-! ## A151293.P10735065586836718644

`A006134(n)-A095201(A326393(n+1))`
-/

namespace A151293.P10735065586836718644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A095201 (A326393 (n + 1)).toNat

end

end A151293.P10735065586836718644

/-!
# A151294: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1), (1, 1)}.

The programs for A151294, there is no canonical definition to state claims against.
-/

/-! ## A151294.P235641832990365871

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151197(#)]`
-/

namespace A151294.P235641832990365871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151197 k : ℚ)

end

end A151294.P235641832990365871

/-! ## A151294.P11510197549350702415

`A156562(A006253(n))`
-/

namespace A151294.P11510197549350702415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A006253 n).toNat

end

end A151294.P11510197549350702415

/-!
# A151295: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151295, there is no canonical definition to state claims against.
-/

/-! ## A151295.P12150432082018432378

`A199238(ceil(gcd(n, (n+2)!)^(n-2))+1)+A150398(n)`
-/

namespace A151295.P12150432082018432378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (⌈(Nat.gcd n (Nat.factorial (n + 2)) : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + 1).toNat + A150398 n

end

end A151295.P12150432082018432378

/-! ## A151295.P4603846399407372721

`A150398(n)+A056594(A000272(n))`
-/

namespace A151295.P4603846399407372721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150398 n + A056594 (A000272 n).toNat

end

end A151295.P4603846399407372721

/-! ## A151295.P14679695677541613559

`A150398(n)+A025456(A151309(n))`
-/

namespace A151295.P14679695677541613559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150398 n + A025456 (A151309 n).toNat

end

end A151295.P14679695677541613559

/-!
# A151296: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, 1), (-1, 0), (0, 1), (1, -1), (1, 0)}.

The programs for A151296, there is no canonical definition to state claims against.
-/

/-! ## A151296.P17208745871488907934

`A062300(A150211(n+1))`
-/

namespace A151296.P17208745871488907934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A150211 (n + 1)).toNat

end

end A151296.P17208745871488907934

/-! ## A151296.P4669203396909399400

`∑[A062300(Δ[A150211(n)])]`
-/

namespace A151296.P4669203396909399400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150211 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151296.P4669203396909399400

/-! ## A151296.P14141265073698352659

`A289436(A149071(n)+A149066(n+1))`
-/

namespace A151296.P14141265073698352659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A149071 n + A149066 (n + 1)).toNat

end

end A151296.P14141265073698352659

/-!
# A151297: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151297, there is no canonical definition to state claims against.
-/

/-! ## A151297.P7533008402273281282

`A052706(A037336(n+2))`
-/

namespace A151297.P7533008402273281282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052706 (A037336 (n + 2)).toNat

end

end A151297.P7533008402273281282

/-! ## A151297.P2461207239630028424

`A052706(A037443(n+2))`
-/

namespace A151297.P2461207239630028424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052706 (A037443 (n + 2)).toNat

end

end A151297.P2461207239630028424

/-! ## A151297.P7097716767079020117

`A052706(A365822(n+2))`
-/

namespace A151297.P7097716767079020117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052706 (A365822 (n + 2)).toNat

end

end A151297.P7097716767079020117

/-!
# A151298: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, -1), (1, 0)}.

The programs for A151298, there is no canonical definition to state claims against.
-/

/-! ## A151298.P395537490596357281

`A065033(∑[A094558(n+1)])`
-/

namespace A151298.P395537490596357281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151298.P395537490596357281

/-! ## A151298.P12635896344216811097

`A020915(A302186(n)-A079944(n))`
-/

namespace A151298.P12635896344216811097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A302186 n - A079944 n).toNat

end

end A151298.P12635896344216811097

/-! ## A151298.P3972121786558419675

`A020915(A302186(n)-A121548(n+1))`
-/

namespace A151298.P3972121786558419675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A302186 n - A121548 (n + 1)).toNat

end

end A151298.P3972121786558419675

