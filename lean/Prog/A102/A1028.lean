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
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A102800: Let f(n) = A104246(n) be the minimal number of nonzero tetrahedral numbers that add to n; sequence gives numbers n for which f(n) <= 4.

The programs for A102800, there is no canonical definition to state claims against.
-/

/-! ## A102800.P17532989120894830564

`lt[A104246(n+1), 5]+1`
-/

namespace A102800.P17532989120894830564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102800.P17532989120894830564

/-! ## A102800.P10467241858354817300

`comp[A000797(n+1)-1]+1`
-/

namespace A102800.P10467241858354817300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000797 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A102800.P10467241858354817300

/-! ## A102800.P5080816762900273857

`comp[A000164(n)*A000797(n+1)]`
-/

namespace A102800.P5080816762900273857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n * A000797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A102800.P5080816762900273857

/-! ## A102800.P18250172470965936182

`comp[lcm(A000797(n+1), A135936(n))]`
-/

namespace A102800.P18250172470965936182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000797 (n + 1)) (A135936 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A102800.P18250172470965936182

/-! ## A102800.P11894765869431128375

`eq[char[A000797(n+1)], A000007(n)]`
-/

namespace A102800.P11894765869431128375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A102800.P11894765869431128375

/-! ## A102800.P949888509664451627

`eq[char[A000797(n+1)], A151933(n)]`
-/

namespace A102800.P949888509664451627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000797 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A102800.P949888509664451627

/-! ## A102800.P17552680733642111207

`∪[A102797(n+1), A102799(n+1)]`
-/

namespace A102800.P17552680733642111207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102800.P17552680733642111207

/-! ## A102800.P4874913988005728295

`∑[A000374(A034380(A053755(n)))]`
-/

namespace A102800.P4874913988005728295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A034380 (A053755 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102800.P4874913988005728295

/-!
# A102801: Let f(n) be the minimal number of distinct nonzero tetrahedral numbers that add to n (or -1 if n is not a sum of distinct tetrahedral numbers); sequence gives numbers n for which f(n) = 2.

The programs for A102801, there is no canonical definition to state claims against.
-/

/-! ## A102801.P8750134011354051621

`filter[A102856(n+1), A014306(#)]`
-/

namespace A102801.P8750134011354051621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A102801.P8750134011354051621

/-! ## A102801.P2711361390150345382

`∩[A102795(n+1), A102856(n+1)]`
-/

namespace A102801.P2711361390150345382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102801.P2711361390150345382

/-! ## A102801.P374949117458831270

`eq[2, A102855(n+1)]+1`
-/

namespace A102801.P374949117458831270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102801.P374949117458831270

/-! ## A102801.P9977464103641358964

`eq[2, A102855(A028310(n))]`
-/

namespace A102801.P9977464103641358964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102801.P9977464103641358964

/-! ## A102801.P9114200130277593212

`A020725(eq[2, A102855(n+1)])`
-/

namespace A102801.P9114200130277593212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102801.P9114200130277593212

/-! ## A102801.P15579382040482990963

`A065475(eq[2, A102855(n+1)])`
-/

namespace A102801.P15579382040482990963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102801.P15579382040482990963

/-! ## A102801.P10721265946686479052

`A153152(eq[2, A102855(n+1)])`
-/

namespace A102801.P10721265946686479052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102801.P10721265946686479052

/-! ## A102801.P8205931660186099126

`eq[gcd(3, A331919(n)), A014306(n)]`
-/

namespace A102801.P8205931660186099126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A331919 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102801.P8205931660186099126

/-! ## A102801.P15275469127869413843

`∩[A102856(n+1), A145397(n+1)]`
-/

namespace A102801.P15275469127869413843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102801.P15275469127869413843

/-! ## A102801.P794900493220819864

`eq[2, A102855(A000007(n)+n)]`
-/

namespace A102801.P794900493220819864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102801.P794900493220819864

/-! ## A102801.P5543194940579625098

`eq[2, A102855(A123108(2*n))]`
-/

namespace A102801.P5543194940579625098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102801.P5543194940579625098

/-! ## A102801.P4448944479841120578

`eq[2, A102855(A233583(n+1))]`
-/

namespace A102801.P4448944479841120578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102801.P4448944479841120578

/-!
# A102802: Let f(n) be the minimal number of distinct nonzero tetrahedral numbers that add to n (or -1 if n is not a sum of distinct tetrahedral numbers); sequence gives numbers n for which f(n) = 3.

The programs for A102802, there is no canonical definition to state claims against.
-/

/-! ## A102802.P818959060716251150

`eq[3, A102855(n+1)]+1`
-/

namespace A102802.P818959060716251150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102802.P818959060716251150

/-! ## A102802.P17280718731048967665

`eq[3, A102855(A028310(n))]`
-/

namespace A102802.P17280718731048967665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102802.P17280718731048967665

/-! ## A102802.P1451458071301503844

`A020725(eq[3, A102855(n+1)])`
-/

namespace A102802.P1451458071301503844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102802.P1451458071301503844

/-! ## A102802.P7965185139011455906

`A065475(eq[3, A102855(n+1)])`
-/

namespace A102802.P7965185139011455906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102802.P7965185139011455906

/-! ## A102802.P2155648025458606659

`A153152(eq[3, A102855(n+1)])`
-/

namespace A102802.P2155648025458606659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102802.P2155648025458606659

/-! ## A102802.P1963621098688110417

`eq[3, A102855(A233583(n+1))]`
-/

namespace A102802.P1963621098688110417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102802.P1963621098688110417

/-! ## A102802.P11702288365229585016

`eq[3, A102855(A123108(2*n))]`
-/

namespace A102802.P11702288365229585016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102802.P11702288365229585016

/-! ## A102802.P5701944498580960116

`eq[3, A102855(A000007(n)+n)]`
-/

namespace A102802.P5701944498580960116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102802.P5701944498580960116

/-! ## A102802.P5420320269338999003

`eq[3, A102855(xor(n, A000007(n)))]`
-/

namespace A102802.P5420320269338999003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102802.P5420320269338999003

/-!
# A102803: Let f(n) be the minimal number of distinct nonzero tetrahedral numbers that add to n (or -1 if n is not a sum of distinct tetrahedral numbers); sequence gives numbers n for which f(n) = 4.

The programs for A102803, there is no canonical definition to state claims against.
-/

/-! ## A102803.P14400495369948552027

`eq[4, A102855(n+1)]+1`
-/

namespace A102803.P14400495369948552027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A102803.P14400495369948552027

/-! ## A102803.P3337812634800923946

`eq[4, A102855(A028310(n))]`
-/

namespace A102803.P3337812634800923946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102803.P3337812634800923946

/-! ## A102803.P11714595865694743696

`A065475(eq[4, A102855(n+1)])`
-/

namespace A102803.P11714595865694743696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102803.P11714595865694743696

/-! ## A102803.P14879902441478272422

`A153152(eq[4, A102855(n+1)])`
-/

namespace A102803.P14879902441478272422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102803.P14879902441478272422

/-! ## A102803.P14445776518811263465

`eq[4, A102855(A233583(n+1))]`
-/

namespace A102803.P14445776518811263465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102803.P14445776518811263465

/-! ## A102803.P16273100033972680375

`eq[4, A102855(A000007(n)+n)]`
-/

namespace A102803.P16273100033972680375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102803.P16273100033972680375

/-! ## A102803.P1922510983600466226

`eq[4, A102855(xor(n, A000007(n)))]`
-/

namespace A102803.P1922510983600466226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102803.P1922510983600466226

/-!
# A102804: Let f(n) be the minimal number of distinct nonzero tetrahedral numbers that add to n (or -1 if n is not a sum of distinct tetrahedral numbers); sequence gives numbers n for which f(n) = 5.

The programs for A102804, there is no canonical definition to state claims against.
-/

/-! ## A102804.P7627569658278036877

`eq[5, A102855(n+3)]+3`
-/

namespace A102804.P7627569658278036877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A102804.P7627569658278036877

/-! ## A102804.P14720824105122745824

`eq[5, A102855(A028310(n))]`
-/

namespace A102804.P14720824105122745824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102804.P14720824105122745824

/-! ## A102804.P3971051168651578429

`eq[5, A102855(A060000(n+1))]`
-/

namespace A102804.P3971051168651578429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102804.P3971051168651578429

/-! ## A102804.P18289020353656319904

`A065475(eq[5, A102855(n+1)])`
-/

namespace A102804.P18289020353656319904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102804.P18289020353656319904

/-! ## A102804.P6328809815751529933

`eq[5, A102855(A233583(n+1))]`
-/

namespace A102804.P6328809815751529933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102804.P6328809815751529933

/-!
# A102805: Let f(n) be the minimal number of distinct nonzero tetrahedral numbers that add to n (or -1 if n is not a sum of distinct tetrahedral numbers); sequence gives numbers n for which f(n) = 6.

The programs for A102805, there is no canonical definition to state claims against.
-/

/-! ## A102805.P14860659908849031289

`eq[6, A102855(A028310(n))]`
-/

namespace A102805.P14860659908849031289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102805.P14860659908849031289

/-! ## A102805.P7841181744341386160

`eq[6, A102855(A060000(n+1))]`
-/

namespace A102805.P7841181744341386160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102805.P7841181744341386160

/-! ## A102805.P9271242795805854170

`A065475(eq[6, A102855(n+1)])`
-/

namespace A102805.P9271242795805854170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102805.P9271242795805854170

/-! ## A102805.P2873149910992152068

`eq[6, A102855(A066182(n+1))]`
-/

namespace A102805.P2873149910992152068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102805.P2873149910992152068

/-!
# A102806: Numbers that are not the sum of distinct tetrahedral numbers.

The programs for A102806, there is no canonical definition to state claims against.
-/

/-! ## A102806.P2698894202115517140

`eq[0, A279278(n)]`
-/

namespace A102806.P2698894202115517140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102806.P2698894202115517140

/-! ## A102806.P4883181116479645915

`eq[0, A331919(n)]`
-/

namespace A102806.P4883181116479645915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102806.P4883181116479645915

/-! ## A102806.P8565421429572906610

`lt[A102855(n+1), 0]+1`
-/

namespace A102806.P8565421429572906610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102806.P8565421429572906610

/-! ## A102806.P12223265047693696693

`lt[A279278(n+1), 1]+1`
-/

namespace A102806.P12223265047693696693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102806.P12223265047693696693

/-! ## A102806.P6257808319848782677

`lt[A331919(n+1), 1]+1`
-/

namespace A102806.P6257808319848782677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102806.P6257808319848782677

/-! ## A102806.P9240426587660358130

`record[gcd(n+2, A279278(n+2))]`
-/

namespace A102806.P9240426587660358130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A279278 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102806.P9240426587660358130

/-! ## A102806.P9316254503993526043

`lt[A331919(A028310(n)), 1]`
-/

namespace A102806.P9316254503993526043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102806.P9316254503993526043

/-! ## A102806.P11130964565561730953

`A254667(lt[A331919(n), 1])`
-/

namespace A102806.P11130964565561730953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A102806.P11130964565561730953

/-! ## A102806.P15996272746291236907

`lt[A331919(n), A025441(n)!]`
-/

namespace A102806.P15996272746291236907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102806.P15996272746291236907

/-! ## A102806.P8514625385980555092

`lt[A331919(n), A025458(n)!]`
-/

namespace A102806.P8514625385980555092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102806.P8514625385980555092

/-! ## A102806.P11982709987032135690

`lt[A001221(A279278(n)+1), 1]`
-/

namespace A102806.P11982709987032135690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A279278 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102806.P11982709987032135690

/-! ## A102806.P7209392577064986963

`lt[A001222(A279278(n)+1), 1]`
-/

namespace A102806.P7209392577064986963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A279278 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102806.P7209392577064986963

/-! ## A102806.P14214642383658680873

`lt[A000005(A279278(n)+1), 2]`
-/

namespace A102806.P14214642383658680873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A279278 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102806.P14214642383658680873

/-! ## A102806.P17178869829687325265

`eq[1, -A102855(A000007(n)+n)]`
-/

namespace A102806.P17178869829687325265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102855 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102806.P17178869829687325265

/-! ## A102806.P10824927647385652753

`eq[1, -A102855(xor(n, A000007(n)))]`
-/

namespace A102806.P10824927647385652753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A102855 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102806.P10824927647385652753

/-! ## A102806.P6741978953132804501

`lt[A331919(n), A007318(ceil(n/63))]`
-/

namespace A102806.P6741978953132804501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / 63⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102806.P6741978953132804501

/-! ## A102806.P10019531440087377400

`A020725(eq[1, A102855(n+1)+2])`
-/

namespace A102806.P10019531440087377400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102806.P10019531440087377400

/-! ## A102806.P10532313643937241648

`record[n+3-A016777(A331919(n+2))]`
-/

namespace A102806.P10532313643937241648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A016777 (A331919 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102806.P10532313643937241648

/-!
# A102807: a(n) is the square of one plus the number consisting of n 3's.

The programs for A102807, the canonical program `A102807.P7575163158160874326` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102807 has offset 0).

The definition of A102807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102807.P7575163158160874326

`(10^n+2)²/9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102807

/-- `(10^n+2)²/9` -/
def P7575163158160874326.Spec : Prop :=
  ∀ n, P7575163158160874326.a n = (A102807 n : ℚ)

end A102807

/-! ## A102807.P9637802121502580192

`∑[10*a(n-1)]²` with `a(0)=1, a(1)=3`
-/

namespace A102807.P9637802121502580192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A102807.P9637802121502580192

namespace A102807

/-- `∑[10*a(n-1)]²` -/
def P9637802121502580192.Spec : Prop :=
  ∀ n, (P9637802121502580192.a n : ℤ) = A102807 n

end A102807

/-! ## A102807.P12833053891246812469

`ceil(10^n/3)^((4*(10^(n+1)-2))%3)`
-/

namespace A102807.P12833053891246812469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(10 ^ n : ℚ) / 3⌉ : ℚ) ^ (Int.tmod (4 * ((10 ^ (n + 1) : ℤ) - 2)) 3 : ℤ)

end

end A102807.P12833053891246812469

namespace A102807

/-- `ceil(10^n/3)^((4*(10^(n+1)-2))%3)` -/
def P12833053891246812469.Spec : Prop :=
  ∀ n, P12833053891246812469.a n = (A102807 n : ℚ)

end A102807

/-! ## A102807.P1154029847217436666

`floor(2/3*10^n)+(and(-2, 10^n)-1)*floor(10^n/9)+1`
-/

namespace A102807.P1154029847217436666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋ + ((Int.land (-2) (10 ^ n : ℤ) - 1) * ⌊(10 ^ n : ℚ) / 9⌋ + 1)

end

end A102807.P1154029847217436666

namespace A102807

/-- `floor(2/3*10^n)+(and(-2, 10^n)-1)*floor(10^n/9)+1` -/
def P1154029847217436666.Spec : Prop :=
  ∀ n, P1154029847217436666.a n = A102807 n

end A102807

/-! ## A102807.P14049596579943556737

`A093137(n)²`
-/

namespace A102807.P14049596579943556737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n ^ 2

end

end A102807.P14049596579943556737

namespace A102807

/-- `A093137(n)²` -/
def P14049596579943556737.Spec : Prop :=
  ∀ n, P14049596579943556737.a n = A102807 n

end A102807

/-! ## A102807.P6409780392671686809

`A098210(n)+1`
-/

namespace A102807.P6409780392671686809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098210 n + 1

end

end A102807.P6409780392671686809

namespace A102807

/-- `A098210(n)+1` -/
def P6409780392671686809.Spec : Prop :=
  ∀ n, P6409780392671686809.a n = A102807 n

end A102807

/-! ## A102807.P4201586992802300216

`∑[A093138(n)]²`
-/

namespace A102807.P4201586992802300216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A102807.P4201586992802300216

namespace A102807

/-- `∑[A093138(n)]²` -/
def P4201586992802300216.Spec : Prop :=
  ∀ n, P4201586992802300216.a n = A102807 n

end A102807

/-! ## A102807.P17746952025471623381

`A308900(Δ[n²])²`
-/

namespace A102807.P17746952025471623381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A102807.P17746952025471623381

namespace A102807

/-- `A308900(Δ[n²])²` -/
def P17746952025471623381.Spec : Prop :=
  ∀ n, P17746952025471623381.a n = A102807 n

end A102807

/-! ## A102807.P11785275583277664980

`A237424(∑[n]+1)²`
-/

namespace A102807.P11785275583277664980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A102807.P11785275583277664980

namespace A102807

/-- `A237424(∑[n]+1)²` -/
def P11785275583277664980.Spec : Prop :=
  ∀ n, P11785275583277664980.a n = A102807 n

end A102807

/-! ## A102807.P5129276376256908486

`A308900(2*n+1)*A308900(2*n+1)`
-/

namespace A102807.P5129276376256908486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308900 (2 * n + 1) * A308900 (2 * n + 1)

end

end A102807.P5129276376256908486

namespace A102807

/-- `A308900(2*n+1)*A308900(2*n+1)` -/
def P5129276376256908486.Spec : Prop :=
  ∀ n, P5129276376256908486.a n = A102807 n

end A102807

/-!
# A102808: Numbers k such that the k-th prime is in A057468.

The programs for A102808, there is no canonical definition to state claims against.
-/

/-! ## A102808.P1566679014057684527

`A000720(A057468(n+1))`
-/

namespace A102808.P1566679014057684527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057468 (n + 1)).toNat

end

end A102808.P1566679014057684527

/-! ## A102808.P14550948190090931942

`record[A061395(A283653(n+2))]`
-/

namespace A102808.P14550948190090931942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A283653 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102808.P14550948190090931942

/-! ## A102808.P6617243575966859922

`∑{d}[A057468(n+1), A061395(#)]`
-/

namespace A102808.P6617243575966859922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A102808.P6617243575966859922

/-!
# A102810: Numbers n such that 2*prime(n)+3, 2*prime(n+1)+3, 2*prime(n+2)+3, 2*prime(n+3)+3 and 2*prime(n+4)+3 are consecutive primes.

The programs for A102810, there is no canonical definition to state claims against.
-/

/-! ## A102810.P1662624107971059462

`∩[A089009(n+1)-1, A089009(n+1)]`
-/

namespace A102810.P1662624107971059462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089009 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102810.P1662624107971059462

/-!
# A102812: a(0) = 1, a(n) = Sum_{k=1..n} A001263(n,k)*a(k-1) where A001263(n,k) are Narayana numbers.

The programs for A102812, there is no canonical definition to state claims against.
-/

/-! ## A102812.P11771931680106247994

`A143778(∑[n]+n)`
-/

namespace A102812.P11771931680106247994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143778 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A102812.P11771931680106247994

/-! ## A102812.P7104506399691381732

`A007318(∑[n])*A143778(A000096(n))`
-/

namespace A102812.P7104506399691381732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A143778 (A000096 n).toNat

end

end A102812.P7104506399691381732

/-! ## A102812.P14603269309391453301

`A143778(A000096(n))/A007318(C(n, 2))`
-/

namespace A102812.P14603269309391453301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143778 (A000096 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A102812.P14603269309391453301

/-! ## A102812.P8974539730266233655

`A143778(A000096(n))+n*A285480(2*n+3)`
-/

namespace A102812.P8974539730266233655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143778 (A000096 n).toNat + (n : ℤ) * A285480 (2 * n + 3)

end

end A102812.P8974539730266233655

/-! ## A102812.P12007341663560458292

`A143778(A000096(n))*A302150(C(n, 2)+1)`
-/

namespace A102812.P12007341663560458292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143778 (A000096 n).toNat * A302150 (Nat.choose n 2 + 1)

end

end A102812.P12007341663560458292

/-!
# A102814: a(-1) = 1, a(n) = Sum_{k=0..n} A034851(n,k)*a(k-1) where A034851(n,k) are entries in Losanitsch's triangle.

The programs for A102814, there is no canonical definition to state claims against.
-/

/-! ## A102814.P6105804908303157867

`A226190(A000083(n)*A086736(n+1))`
-/

namespace A102814.P6105804908303157867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A000083 n * A086736 (n + 1)).toNat

end

end A102814.P6105804908303157867

/-! ## A102814.P5867384858673246388

`round(A217504(n+1)^acot(6))`
-/

namespace A102814.P5867384858673246388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A217504 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (6 : ℝ)))

end

end A102814.P5867384858673246388

/-! ## A102814.P15479040473005936918

`A078129(A257520(n))`
-/

namespace A102814.P15479040473005936918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A257520 n).toNat

end

end A102814.P15479040473005936918

/-!
# A102815: "False so far" sequence.

The programs for A102815, there is no canonical definition to state claims against.
-/

/-! ## A102815.P17131767394255630459

`A040056(A215033(n+1))+n+3`
-/

namespace A102815.P17131767394255630459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A215033 (n + 1)).toNat + (n + 3 : ℤ)

end

end A102815.P17131767394255630459

/-!
# A102818: Irregular array a(m,k) = A001035(k) mod m read by rows, 1<=k<=16, 3<=m.

The programs for A102818, there is no canonical definition to state claims against.
-/

/-! ## A102818.P18182684558069375583

`3%A000029(∑[A023929(n)]-A000035(n))`
-/

namespace A102818.P18182684558069375583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A000029 (∑ j ∈ Finset.range (n + 1), f1 j - A000035 n).toNat)

end

end A102818.P18182684558069375583

/-! ## A102818.P6062989508223051930

`A000225(∑[A023929(n)]-A000035(n))%4`
-/

namespace A102818.P6062989508223051930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (∑ j ∈ Finset.range (n + 1), f1 j - A000035 n).toNat) 4

end

end A102818.P6062989508223051930

/-! ## A102818.P4411724808083253098

`A117707(∑[A023929(n)]-A000035(n))%5`
-/

namespace A102818.P4411724808083253098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117707 (∑ j ∈ Finset.range (n + 1), f1 j - A000035 n).toNat) 5

end

end A102818.P4411724808083253098

/-! ## A102818.P3397754272922861064

`A162351(∑[A023929(n)]-A000035(n))%9`
-/

namespace A102818.P3397754272922861064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162351 (∑ j ∈ Finset.range (n + 1), f1 j - A000035 n).toNat) 9

end

end A102818.P3397754272922861064

/-! ## A102818.P1485999055166924719

`C(A262681(A277253(n)), A000034(n))`
-/

namespace A102818.P1485999055166924719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262681 (A277253 n).toNat).toNat (A000034 n).toNat

end

end A102818.P1485999055166924719

/-!
# A102820: Number of primes between 2*prime(n) and 2*prime(n+1), where prime(n) is the n-th prime.

The programs for A102820, the canonical program `A102820.P6198136110421382965` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102820 has offset 1).

The definition of A102820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102820.P6198136110421382965

`A020900(n+2)-A020900(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A102820

/-- `A020900(n+2)-A020900(n+1)` -/
def P6198136110421382965.Spec : Prop :=
  ∀ n, P6198136110421382965.a n = A102820 (n + 1)

theorem P6198136110421382965.correct : P6198136110421382965.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel]

end A102820

/-! ## A102820.P9123474423387409401

`A000720(2*A000040(n+2))-A000720(2*A000040(n+1))`
-/

namespace A102820.P9123474423387409401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A000040 (n + 2)).toNat - A000720 (2 * A000040 (n + 1)).toNat

end

end A102820.P9123474423387409401

namespace A102820

/-- `A000720(2*A000040(n+2))-A000720(2*A000040(n+1))` -/
def P9123474423387409401.Spec : Prop :=
  ∀ n, P9123474423387409401.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P13897021888738635926

`Δ[A063124(n+1)]+1`
-/

namespace A102820.P13897021888738635926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A102820.P13897021888738635926

namespace A102820

/-- `Δ[A063124(n+1)]+1` -/
def P13897021888738635926.Spec : Prop :=
  ∀ n, P13897021888738635926.a n = A102820 (n + 1)

theorem P13897021888738635926.correct : P13897021888738635926.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P13897021888738635926.f1, A102820.P13897021888738635926.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A063124, A063124.P9970457058300728251.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P10357759774390851182

`A063124(n+2)-A070046(n+1)`
-/

namespace A102820.P10357759774390851182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063124 (n + 2) - A070046 (n + 1)

end

end A102820.P10357759774390851182

namespace A102820

/-- `A063124(n+2)-A070046(n+1)` -/
def P10357759774390851182.Spec : Prop :=
  ∀ n, P10357759774390851182.a n = A102820 (n + 1)

theorem P10357759774390851182.correct : P10357759774390851182.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P10357759774390851182.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A063124, A063124.P9970457058300728251.a, A070046, A070046.P5794988103684771228.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P5453442044712695753

`Δ[A020900(n+1)]`
-/

namespace A102820.P5453442044712695753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P5453442044712695753

namespace A102820

/-- `Δ[A020900(n+1)]` -/
def P5453442044712695753.Spec : Prop :=
  ∀ n, P5453442044712695753.a n = A102820 (n + 1)

theorem P5453442044712695753.correct : P5453442044712695753.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P5453442044712695753.f1, A102820.P5453442044712695753.a, A102820.P6198136110421382965.a, SequenceMachineLib.memo_apply]

end A102820

/-! ## A102820.P7357237113807125106

`Δ[A070046(n+1)]+1`
-/

namespace A102820.P7357237113807125106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A102820.P7357237113807125106

namespace A102820

/-- `Δ[A070046(n+1)]+1` -/
def P7357237113807125106.Spec : Prop :=
  ∀ n, P7357237113807125106.a n = A102820 (n + 1)

theorem P7357237113807125106.correct : P7357237113807125106.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P7357237113807125106.f1, A102820.P7357237113807125106.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A070046, A070046.P5794988103684771228.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063124, A063124.P9970457058300728251.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P16929713419555402790

`Δ[A298862(n+1)]-1`
-/

namespace A102820.P16929713419555402790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A102820.P16929713419555402790

namespace A102820

/-- `Δ[A298862(n+1)]-1` -/
def P16929713419555402790.Spec : Prop :=
  ∀ n, P16929713419555402790.a n = A102820 (n + 1)

theorem P16929713419555402790.correct : P16929713419555402790.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P16929713419555402790.f1, A102820.P16929713419555402790.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A298862, A298862.P8575127337279644587.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P9880043452156638087

`2-Δ[A331677(n+1)]`
-/

namespace A102820.P9880043452156638087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A102820.P9880043452156638087

namespace A102820

/-- `2-Δ[A331677(n+1)]` -/
def P9880043452156638087.Spec : Prop :=
  ∀ n, P9880043452156638087.a n = A102820 (n + 1)

theorem P9880043452156638087.correct : P9880043452156638087.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P9880043452156638087.f1, A102820.P9880043452156638087.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A331677, A331677.P6402599086706022467.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P12411285629783714904

`2-Δ[A334051(n+1)]`
-/

namespace A102820.P12411285629783714904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A102820.P12411285629783714904

namespace A102820

/-- `2-Δ[A334051(n+1)]` -/
def P12411285629783714904.Spec : Prop :=
  ∀ n, P12411285629783714904.a n = A102820 (n + 1)

theorem P12411285629783714904.correct : P12411285629783714904.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P12411285629783714904.f1, A102820.P12411285629783714904.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A334051, A334051.P2829152517033935229.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, A331677, A331677.P6402599086706022467.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P1607858456483323702

`A070046(n+2)+1-A070046(n+1)`
-/

namespace A102820.P1607858456483323702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070046 (n + 2) + (1 - A070046 (n + 1))

end

end A102820.P1607858456483323702

namespace A102820

/-- `A070046(n+2)+1-A070046(n+1)` -/
def P1607858456483323702.Spec : Prop :=
  ∀ n, P1607858456483323702.a n = A102820 (n + 1)

theorem P1607858456483323702.correct : P1607858456483323702.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P1607858456483323702.a, A102820.P6198136110421382965.a, A020900, A020900.P12967914466540950521.a, A070046, A070046.P5794988103684771228.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063124, A063124.P9970457058300728251.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P6831376382332508774

`Δ[A000040(n+1)-A246514(n+1)]+1`
-/

namespace A102820.P6831376382332508774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A246514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A102820.P6831376382332508774

namespace A102820

/-- `Δ[A000040(n+1)-A246514(n+1)]+1` -/
def P6831376382332508774.Spec : Prop :=
  ∀ n, P6831376382332508774.a n = A102820 (n + 1)

theorem P6831376382332508774.correct : P6831376382332508774.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P6831376382332508774.f1, A102820.P6831376382332508774.a, A102820.P6198136110421382965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A020900, A020900.P12967914466540950521.a, A246514, A246514.P626080667968607195.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P16350823471363110989

`Δ[A000720(A059788(n+1))]`
-/

namespace A102820.P16350823471363110989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059788 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P16350823471363110989

namespace A102820

/-- `Δ[A000720(A059788(n+1))]` -/
def P16350823471363110989.Spec : Prop :=
  ∀ n, P16350823471363110989.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P4384146661024205174

`Δ[A000720(A100484(n+1))]`
-/

namespace A102820.P4384146661024205174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P4384146661024205174

namespace A102820

/-- `Δ[A000720(A100484(n+1))]` -/
def P4384146661024205174.Spec : Prop :=
  ∀ n, P4384146661024205174.a n = A102820 (n + 1)

theorem P4384146661024205174.correct : P4384146661024205174.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P4384146661024205174.f1, A102820.P4384146661024205174.a, A102820.P6198136110421382965.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P6472531887452314111

`Δ[A099801(A006093(n+1))]`
-/

namespace A102820.P6472531887452314111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P6472531887452314111

namespace A102820

/-- `Δ[A099801(A006093(n+1))]` -/
def P6472531887452314111.Spec : Prop :=
  ∀ n, P6472531887452314111.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P14130270154347138052

`Δ[A000720(A001747(n+2))]`
-/

namespace A102820.P14130270154347138052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001747 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P14130270154347138052

namespace A102820

/-- `Δ[A000720(A001747(n+2))]` -/
def P14130270154347138052.Spec : Prop :=
  ∀ n, P14130270154347138052.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P16379743889680856015

`Δ[A000720(Δ[2*A007504(n)])]`
-/

namespace A102820.P16379743889680856015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P16379743889680856015

namespace A102820

/-- `Δ[A000720(Δ[2*A007504(n)])]` -/
def P16379743889680856015.Spec : Prop :=
  ∀ n, P16379743889680856015.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P2106908701085360476

`Δ[A000720(2*A000040(n+1))]`
-/

namespace A102820.P2106908701085360476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P2106908701085360476

namespace A102820

/-- `Δ[A000720(2*A000040(n+1))]` -/
def P2106908701085360476.Spec : Prop :=
  ∀ n, P2106908701085360476.a n = A102820 (n + 1)

theorem P2106908701085360476.correct : P2106908701085360476.Spec := by
  intro n
  simp only [A102820, Nat.add_sub_cancel, A102820.P2106908701085360476.f1, A102820.P2106908701085360476.a, A102820.P6198136110421382965.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A020900, A020900.P12967914466540950521.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A102820

/-! ## A102820.P3265171056032754656

`Δ[A000720(2*A008578(n+2))]`
-/

namespace A102820.P3265171056032754656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P3265171056032754656

namespace A102820

/-- `Δ[A000720(2*A008578(n+2))]` -/
def P3265171056032754656.Spec : Prop :=
  ∀ n, P3265171056032754656.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P2937473830935419272

`Δ[A000720(Δ[2*A014284(n+1)])]`
-/

namespace A102820.P2937473830935419272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014284 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P2937473830935419272

namespace A102820

/-- `Δ[A000720(Δ[2*A014284(n+1)])]` -/
def P2937473830935419272.Spec : Prop :=
  ∀ n, P2937473830935419272.a n = A102820 (n + 1)

end A102820

/-! ## A102820.P16821155640853273815

`Δ[A000720(2*A134735(2*n+1))]`
-/

namespace A102820.P16821155640853273815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A134735 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102820.P16821155640853273815

namespace A102820

/-- `Δ[A000720(2*A134735(2*n+1))]` -/
def P16821155640853273815.Spec : Prop :=
  ∀ n, P16821155640853273815.a n = A102820 (n + 1)

end A102820

/-!
# A102821: Numbers n for which the square excess of n-th prime is prime.

The programs for A102821, there is no canonical definition to state claims against.
-/

/-! ## A102821.P3873466838716317873

`A000720(A135932(n+1))`
-/

namespace A102821.P3873466838716317873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A135932 (n + 1)).toNat

end

end A102821.P3873466838716317873

/-! ## A102821.P7188167779112932309

`record[A049084(A176864(n+1))]`
-/

namespace A102821.P7188167779112932309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A176864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102821.P7188167779112932309

/-! ## A102821.P13121627527297684403

`A000720(p?[A176864(n+1)])`
-/

namespace A102821.P13121627527297684403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P13121627527297684403

/-! ## A102821.P11521255368264335405

`A003963(p?[A176864(n+1)])`
-/

namespace A102821.P11521255368264335405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P11521255368264335405

/-! ## A102821.P16064532970391468578

`A026233(p?[A176864(n+1)])`
-/

namespace A102821.P16064532970391468578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P16064532970391468578

/-! ## A102821.P4175860105413571181

`A049084(p?[A176864(n+1)])`
-/

namespace A102821.P4175860105413571181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P4175860105413571181

/-! ## A102821.P13960777410861409676

`A055396(p?[A176864(n+1)])`
-/

namespace A102821.P13960777410861409676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P13960777410861409676

/-! ## A102821.P15008769760132939726

`A056239(p?[A176864(n+1)])`
-/

namespace A102821.P15008769760132939726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P15008769760132939726

/-! ## A102821.P11800741944892108669

`record[A065770(A176864(n+2))]`
-/

namespace A102821.P11800741944892108669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A176864 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102821.P11800741944892108669

/-! ## A102821.P5076479085755937203

`A139169(p?[A176864(n+1)])`
-/

namespace A102821.P5076479085755937203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102821.P5076479085755937203

/-!
# A102822: a(n+1) is the integer part of sqrt(2*a(n)^2).

The programs for A102822, the canonical program `A102822.P11576057816263660656` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102822 has offset 3).

The definition of A102822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102822.P11576057816263660656

`floor(sqrt(2)*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102822

/-- `floor(sqrt(2)*a(n-1))` -/
def P11576057816263660656.Spec : Prop :=
  ∀ n, P11576057816263660656.a n = A102822 (n + 3)

theorem P11576057816263660656.correct : P11576057816263660656.Spec := by
  intro n
  simp only [A102822, Nat.add_sub_cancel]

end A102822

/-! ## A102822.P11074027015955398056

`ceil(sqrt(2)*a(n-1))-1` with `a(0)=3`
-/

namespace A102822.P11074027015955398056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.sqrt (2 : ℝ) * (a (n - 1) : ℝ)⌉ - 1

end

end A102822.P11074027015955398056

namespace A102822

/-- `ceil(sqrt(2)*a(n-1))-1` -/
def P11074027015955398056.Spec : Prop :=
  ∀ n, P11074027015955398056.a n = A102822 (n + 3)

end A102822

/-! ## A102822.P14087794274983240139

`floor(a(n-1)/sqrt(1/2))` with `a(0)=3`
-/

namespace A102822.P14087794274983240139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 2 : ℝ)⌋

end

end A102822.P14087794274983240139

namespace A102822

/-- `floor(a(n-1)/sqrt(1/2))` -/
def P14087794274983240139.Spec : Prop :=
  ∀ n, P14087794274983240139.a n = A102822 (n + 3)

end A102822

/-! ## A102822.P8082866449286018041

`ceil(2/sqrt(2/a(n-1)²))-1` with `a(0)=3`
-/

namespace A102822.P8082866449286018041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈2 / Real.sqrt (2 / (a (n - 1) ^ 2 : ℚ) : ℝ)⌉ - 1

end

end A102822.P8082866449286018041

namespace A102822

/-- `ceil(2/sqrt(2/a(n-1)²))-1` -/
def P8082866449286018041.Spec : Prop :=
  ∀ n, P8082866449286018041.a n = A102822 (n + 3)

end A102822

/-!
# A102823: "True already", base 10, start 0: a(n) is the least integer such that the sequence up to a(n-1) written in base 10 contains floor(a(n)/10) copies of the digit a(n) % 10, with a(0) = 0.

The programs for A102823, there is no canonical definition to state claims against.
-/

/-! ## A102823.P3015611644962890561

`lt[xor(A056965(n), A066568(n)), 1]`
-/

namespace A102823.P3015611644962890561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056965 n) (A066568 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102823.P3015611644962890561

/-! ## A102823.P7673070067728782315

`∪[A070958(n+1), A071589(n+1)]`
-/

namespace A102823.P7673070067728782315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102823.P7673070067728782315

/-! ## A102823.P4615785858724356180

`∪[A070958(n+1), A102357(n+1)]`
-/

namespace A102823.P4615785858724356180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102823.P4615785858724356180

/-! ## A102823.P11741149123612488289

`eq[A320486(n), A321802(A328447(n))]`
-/

namespace A102823.P11741149123612488289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A328447 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102823.P11741149123612488289

/-! ## A102823.P3691600698457215991

`record[A328447(n%A017281(A137564(n)))]`
-/

namespace A102823.P3691600698457215991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (Int.tmod (n : ℤ) (A017281 (A137564 n).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102823.P3691600698457215991

/-! ## A102823.P12856723389309463737

`record[A328447(n)+A178334(A257297(n))]`
-/

namespace A102823.P12856723389309463737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n + A178334 (A257297 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102823.P12856723389309463737

/-! ## A102823.P14212686947265857345

`lt[2*n, A065650(n)+10]`
-/

namespace A102823.P14212686947265857345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A102823.P14212686947265857345

/-! ## A102823.P9689595452935619871

`eq[n+9, A077342(n+9)]`
-/

namespace A102823.P9689595452935619871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102823.P9689595452935619871

/-! ## A102823.P3742812679567484978

`eq[A017887(n), A217096(n)]`
-/

namespace A102823.P3742812679567484978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102823.P3742812679567484978

/-! ## A102823.P11194438378379244159

`eq[A017887(n), A055641(n)]`
-/

namespace A102823.P11194438378379244159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102823.P11194438378379244159

/-!
# A102824: "True already", base 2, start 0: a(n) is the least integer such that the sequence up to a(n-1) written in base 2 contains floor(a(n)/2) copies of the digit a(n) % 2, with a(0) = 0.

The programs for A102824, there is no canonical definition to state claims against.
-/

/-! ## A102824.P17759070481126988757

`eq[A059620(A000437(n+1)), A360711(n)]`
-/

namespace A102824.P17759070481126988757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 (A000437 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360711 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102824.P17759070481126988757

/-!
# A102825: "True already", base 3, start 0: a(n) is the least integer such that the sequence up to a(n-1) written in base 3 contains floor(a(n)/3) copies of the digit a(n) % 3, with a(0) = 0.

The programs for A102825, there is no canonical definition to state claims against.
-/

/-! ## A102825.P14503650347870966775

`eq[A037808(n+1), A037813(A276086(n))]`
-/

namespace A102825.P14503650347870966775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A276086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102825.P14503650347870966775

/-!
# A102826: "True already", base 4, start 0: a(n) is the least integer such that the sequence up to a(n-1) written in base 4 contains floor(a(n)/4) copies of the digit a(n) % 4, with a(0) = 0.

The programs for A102826, there is no canonical definition to state claims against.
-/

/-! ## A102826.P17876982234509905931

`lt[A071322(A353837(n)), A071322(3*n+5)]`
-/

namespace A102826.P17876982234509905931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071322 (A353837 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071322 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102826.P17876982234509905931

/-! ## A102826.P11286990947007842211

`eq[A005361(A360459(n+1)), A295635(3*n+5)]`
-/

namespace A102826.P11286990947007842211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A360459 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295635 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102826.P11286990947007842211

/-! ## A102826.P12301305404960204873

`lt[A362009(n+1), A000978(A365461(3*n+5))]`
-/

namespace A102826.P12301305404960204873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (A365461 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102826.P12301305404960204873

/-! ## A102826.P14364742913400066736

`lt[A001263(A055673(n+1)), A358889(n+5)]`
-/

namespace A102826.P14364742913400066736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (A055673 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358889 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102826.P14364742913400066736

/-! ## A102826.P3785315157003346591

`lt[A335237(A319193(n)), A121289(3*(n+1))]`
-/

namespace A102826.P3785315157003346591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (A319193 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102826.P3785315157003346591

/-!
# A102827: "True already", base 10, start 1: a(n) is the least integer such that the sequence up to a(n-1) written in base 10 contains floor(a(n)/10) copies of the digit a(n) % 10, with a(0) = 1.

The programs for A102827, there is no canonical definition to state claims against.
-/

/-! ## A102827.P14602169638160357162

`A009994(n+2)`
-/

namespace A102827.P14602169638160357162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 2)

end

end A102827.P14602169638160357162

/-! ## A102827.P15909332410482357843

`eq[1, A193582(n)]`
-/

namespace A102827.P15909332410482357843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102827.P15909332410482357843

/-! ## A102827.P15202555534726813908

`record[A004185(n+1)]`
-/

namespace A102827.P15202555534726813908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102827.P15202555534726813908

/-! ## A102827.P454727170169949149

`record[A226134(n+1)]`
-/

namespace A102827.P454727170169949149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102827.P454727170169949149

/-! ## A102827.P15799420312565101004

`record[A355222(n+1)]`
-/

namespace A102827.P15799420312565101004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102827.P15799420312565101004

/-! ## A102827.P1048292047381417306

`record[A355223(n+1)]`
-/

namespace A102827.P1048292047381417306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102827.P1048292047381417306

/-! ## A102827.P12748255285120809511

`lt[A097601(n)², n]`
-/

namespace A102827.P12748255285120809511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102827.P12748255285120809511

/-! ## A102827.P4407736569849303766

`lt[A193581(n), dr(n)]`
-/

namespace A102827.P4407736569849303766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102827.P4407736569849303766

/-! ## A102827.P11389501904747830280

`lt[n*A033909(n), n]`
-/

namespace A102827.P11389501904747830280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A033909 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A102827.P11389501904747830280

/-! ## A102827.P11950066570008797836

`A355222(a(n-1)+1)` with `a(0)=1`
-/

namespace A102827.P11950066570008797836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355222 (a (n - 1) + 1).toNat

end

end A102827.P11950066570008797836

/-!
# A102828: "True already", base 2, start 1: a(n) is the least integer such that the sequence up to a(n-1) written in base 2 contains floor(a(n)/2) copies of the digit a(n) % 2, with a(0) = 1.

The programs for A102828, there is no canonical definition to state claims against.
-/

/-! ## A102828.P15426681007386919377

`a(n-1)+A178493(a(n-1))+1` with `a(0)=1`
-/

namespace A102828.P15426681007386919377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A178493 (a (n - 1)).toNat + 1)

end

end A102828.P15426681007386919377

/-! ## A102828.P16794336527146100944

`a(n-1)+2*A000120(a(n-1))` with `a(0)=1`
-/

namespace A102828.P16794336527146100944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A000120 (a (n - 1)).toNat

end

end A102828.P16794336527146100944

/-! ## A102828.P14040416367622484563

`a(n-1)+2*A061338(a(n-1))` with `a(0)=1`
-/

namespace A102828.P14040416367622484563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A061338 (a (n - 1)).toNat

end

end A102828.P14040416367622484563

/-! ## A102828.P10306961166799061995

`a(n-1)+2*A081743(a(n-1))` with `a(0)=1`
-/

namespace A102828.P10306961166799061995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A081743 (a (n - 1)).toNat

end

end A102828.P10306961166799061995

/-! ## A102828.P4332498366770762028

`A005843(A000120(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A102828.P4332498366770762028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A000120 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A102828.P4332498366770762028

/-! ## A102828.P1498646752433037916

`A092391(a(n-1))+A000120(a(n-1))` with `a(0)=1`
-/

namespace A102828.P1498646752433037916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092391 (a (n - 1)).toNat + A000120 (a (n - 1)).toNat

end

end A102828.P1498646752433037916

/-! ## A102828.P15543811627640061656

`A001222(A001316(a(n-1))²)+a(n-1)` with `a(0)=1`
-/

namespace A102828.P15543811627640061656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (A001316 (a (n - 1)).toNat ^ 2).toNat + a (n - 1)

end

end A102828.P15543811627640061656

/-! ## A102828.P15567727570728505807

`A062028(A000120(floor(a(n-1))))+a(n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A102828.P15567727570728505807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (A000120 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A102828.P15567727570728505807

/-! ## A102828.P10806727720076994974

`A062028(A000120(ceil(a(n-1))))+a(n-1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A102828.P10806727720076994974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062028 (A000120 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A102828.P10806727720076994974

/-!
# A102829: "True already", base 3, start 1: a(n) is the least integer such that the sequence up to a(n-1) written in base 3 contains floor(a(n)/3) copies of the digit a(n) % 3, with a(0) = 1.

The programs for A102829, there is no canonical definition to state claims against.
-/

/-! ## A102829.P12320976547216883503

`eq[1, A341792(n+9)+A228525(n+1)]`
-/

namespace A102829.P12320976547216883503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341792 (n + 9) + A228525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102829.P12320976547216883503

/-! ## A102829.P940723056270058843

`lt[A124539(A147677(n+1)), A147666(n)]`
-/

namespace A102829.P940723056270058843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124539 (A147677 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102829.P940723056270058843

/-! ## A102829.P12932199331705889147

`eq[A154638(A341792(n+9)), A228525(n+1)]`
-/

namespace A102829.P12932199331705889147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154638 (A341792 (n + 9)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102829.P12932199331705889147

/-! ## A102829.P673606028750387506

`lt[A322530(n), A336957(A301391(n+4))]`
-/

namespace A102829.P673606028750387506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A301391 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102829.P673606028750387506

/-! ## A102829.P14291994664923181849

`lt[A341792(n+9), A191250(A317186(n))]`
-/

namespace A102829.P14291994664923181849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341792 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191250 (A317186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102829.P14291994664923181849

/-!
# A102830: "True already", base 4, start 1: a(n) is the least integer such that the sequence up to a(n-1) written in base 4 contains floor(a(n)/4) copies of the digit a(n) % 4, with a(0) = 1.

The programs for A102830, there is no canonical definition to state claims against.
-/

/-! ## A102830.P17093141301007478118

`eq[floor(n^(1/5)), char[A319652(n)]]`
-/

namespace A102830.P17093141301007478118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A102830.P17093141301007478118

/-! ## A102830.P8991072539653567998

`A048266(A023746(n+2))`
-/

namespace A102830.P8991072539653567998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A023746 (n + 2)).toNat

end

end A102830.P8991072539653567998

/-! ## A102830.P12893337082456150851

`A023746(∑[A028240(n)+1])`
-/

namespace A102830.P12893337082456150851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023746 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102830.P12893337082456150851

/-! ## A102830.P6661171439497014574

`A023746(A187829(n+1)+1)`
-/

namespace A102830.P6661171439497014574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023746 (A187829 (n + 1) + 1).toNat

end

end A102830.P6661171439497014574

/-! ## A102830.P2643156155901456956

`lt[log2(A093371(n+1)), A319652(n)]`
-/

namespace A102830.P2643156155901456956
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A093371 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A102830.P2643156155901456956

/-!
# A102831: Number of n-digit 4th powers.

The programs for A102831, the canonical program `A102831.P13488618990207071454` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102831 has offset 1).

The definition of A102831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102831.P13488618990207071454

`A216658(2*(n+1))+A216658(2*n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102831

/-- `A216658(2*(n+1))+A216658(2*n+1)` -/
def P13488618990207071454.Spec : Prop :=
  ∀ n, P13488618990207071454.a n = A102831 (n + 1)

theorem P13488618990207071454.correct : P13488618990207071454.Spec := by
  intro n
  simp only [A102831, Nat.add_sub_cancel]

end A102831

/-! ## A102831.P2889369615103322973

`floor(acot(n)+Δ[A018074(n)])`
-/

namespace A102831.P2889369615103322973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A102831.P2889369615103322973

namespace A102831

/-- `floor(acot(n)+Δ[A018074(n)])` -/
def P2889369615103322973.Spec : Prop :=
  ∀ n, P2889369615103322973.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P821855047067788646

`A000007(n)+Δ[A130082(2*n+1)]`
-/

namespace A102831.P821855047067788646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A102831.P821855047067788646

namespace A102831

/-- `A000007(n)+Δ[A130082(2*n+1)]` -/
def P821855047067788646.Spec : Prop :=
  ∀ n, P821855047067788646.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P4172197806459977919

`A059841(A000040(2*n+1))+Δ[A130082(2*n+1)]`
-/

namespace A102831.P4172197806459977919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000040 (2 * n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A102831.P4172197806459977919

namespace A102831

/-- `A059841(A000040(2*n+1))+Δ[A130082(2*n+1)]` -/
def P4172197806459977919.Spec : Prop :=
  ∀ n, P4172197806459977919.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P1327037057816490261

`Δ[A130082(2*n+1)+A057427(n)]`
-/

namespace A102831.P1327037057816490261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102831.P1327037057816490261

namespace A102831

/-- `Δ[A130082(2*n+1)+A057427(n)]` -/
def P1327037057816490261.Spec : Prop :=
  ∀ n, P1327037057816490261.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P4977198210070757993

`Δ[A130130(n+1)+A130082(2*n+1)]`
-/

namespace A102831.P4977198210070757993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102831.P4977198210070757993

namespace A102831

/-- `Δ[A130130(n+1)+A130082(2*n+1)]` -/
def P4977198210070757993.Spec : Prop :=
  ∀ n, P4977198210070757993.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P16315780650298385058

`Δ[A130082(2*n+1)+A059841(A008574(n))]`
-/

namespace A102831.P16315780650298385058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * n + 1) + A059841 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102831.P16315780650298385058

namespace A102831

/-- `Δ[A130082(2*n+1)+A059841(A008574(n))]` -/
def P16315780650298385058.Spec : Prop :=
  ∀ n, P16315780650298385058.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P3698171449398079545

`Δ[A164886(A267584(n))+A130082(2*n+1)]`
-/

namespace A102831.P3698171449398079545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A267584 n).toNat + A130082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A102831.P3698171449398079545

namespace A102831

/-- `Δ[A164886(A267584(n))+A130082(2*n+1)]` -/
def P3698171449398079545.Spec : Prop :=
  ∀ n, P3698171449398079545.a n = A102831 (n + 1)

end A102831

/-! ## A102831.P15325168643632519618

`A059841(A034694(2*n+1))+Δ[A130082(2*n+1)]`
-/

namespace A102831.P15325168643632519618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A034694 (2 * n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A102831.P15325168643632519618

namespace A102831

/-- `A059841(A034694(2*n+1))+Δ[A130082(2*n+1)]` -/
def P15325168643632519618.Spec : Prop :=
  ∀ n, P15325168643632519618.a n = A102831 (n + 1)

end A102831

/-!
# A102832: Number of n-digit squares which contain the string "666" but not "6666".

The programs for A102832, there is no canonical definition to state claims against.
-/

/-! ## A102832.P8195987550461570857

`3*A118765(C(n, 6))`
-/

namespace A102832.P8195987550461570857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A118765 (Nat.choose n 6)

end

end A102832.P8195987550461570857

/-! ## A102832.P11202283565797995491

`A000196(C(Δ[n²], 12))`
-/

namespace A102832.P11202283565797995491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 12)

end

end A102832.P11202283565797995491

/-! ## A102832.P7772592229393976241

`A262689(C(floor(n*atan(3)+n), 12))`
-/

namespace A102832.P7772592229393976241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Nat.choose ⌊(n : ℝ) * Real.arctan (3 : ℝ) + (n : ℝ)⌋.toNat 12)

end

end A102832.P7772592229393976241

/-! ## A102832.P16674553724273125921

`A352493(A004093(n))`
-/

namespace A102832.P16674553724273125921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A004093 n).toNat

end

end A102832.P16674553724273125921

/-! ## A102832.P13900901739936357014

`A392176(A112837(n))`
-/

namespace A102832.P13900901739936357014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392176 (A112837 n).toNat

end

end A102832.P13900901739936357014

/-!
# A102833: Numbers n for which rank of the elliptic curve y^2=x^3+n is 3.

The programs for A102833, there is no canonical definition to state claims against.
-/

/-! ## A102833.P11862359863524449926

`eq[3, A060950(A028310(n))]`
-/

namespace A102833.P11862359863524449926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102833.P11862359863524449926

/-! ## A102833.P18072123528407840201

`A020725(eq[3, A060950(n+1)])`
-/

namespace A102833.P18072123528407840201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102833.P18072123528407840201

/-! ## A102833.P15561096380159638255

`A153152(eq[3, A060950(n+1)])`
-/

namespace A102833.P15561096380159638255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A102833.P15561096380159638255

/-! ## A102833.P13148417502020805375

`eq[3, A060950(A233583(n+1))]`
-/

namespace A102833.P13148417502020805375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102833.P13148417502020805375

/-!
# A102834: Numbers whose factors are primes raised to powers >= 2 and are not perfect squares.

The programs for A102834, there is no canonical definition to state claims against.
-/

/-! ## A102834.P5928468121414429945

`∪[A052486(n+1), A097054(n+1)]`
-/

namespace A102834.P5928468121414429945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P5928468121414429945

/-! ## A102834.P15613596080392096415

`∩[A001694(n+1), A069236(n+1)]`
-/

namespace A102834.P15613596080392096415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P15613596080392096415

/-! ## A102834.P1554960629546090975

`∩[A069236(n+1), A320966(n+1)]`
-/

namespace A102834.P1554960629546090975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P1554960629546090975

/-! ## A102834.P5453400478076102054

`∩[A001694(n+1), A388306(n+1)]`
-/

namespace A102834.P5453400478076102054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P5453400478076102054

/-! ## A102834.P13136912057380753351

`∩[A320966(n+1), A388306(n+1)]`
-/

namespace A102834.P13136912057380753351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P13136912057380753351

/-! ## A102834.P17584701933260634226

`∩[A001694(n+1), A380168(n+1)]`
-/

namespace A102834.P17584701933260634226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P17584701933260634226

/-! ## A102834.P17512863890305149084

`∩[A320966(n+1), A380168(n+1)]`
-/

namespace A102834.P17512863890305149084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P17512863890305149084

/-! ## A102834.P13950830043877405035

`∩[A001694(n+1), A295661(n+1)]`
-/

namespace A102834.P13950830043877405035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P13950830043877405035

/-! ## A102834.P17347321718116855406

`∩[A295661(n+1), A320966(n+1)]`
-/

namespace A102834.P17347321718116855406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P17347321718116855406

/-! ## A102834.P12191197585715311729

`filter[A001694(n+1), A049240(#)]`
-/

namespace A102834.P12191197585715311729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A102834.P12191197585715311729

/-! ## A102834.P16165397307071542977

`filter[A320966(n+1), A049240(#)]`
-/

namespace A102834.P16165397307071542977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A102834.P16165397307071542977

/-! ## A102834.P8623192583937912903

`∩[A069236(n+1), A371601(n+1)]`
-/

namespace A102834.P8623192583937912903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P8623192583937912903

/-! ## A102834.P9147833381667292619

`∩[A371601(n+1), A388306(n+1)]`
-/

namespace A102834.P9147833381667292619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P9147833381667292619

/-! ## A102834.P2550074267801782148

`∩[A001694(n+1), A051144(n+1)]`
-/

namespace A102834.P2550074267801782148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P2550074267801782148

/-! ## A102834.P14189079611796323788

`∩[A051144(n+1), A320966(n+1)]`
-/

namespace A102834.P14189079611796323788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P14189079611796323788

/-! ## A102834.P7713152504131631168

`record[A057521(A295661(n+1))]`
-/

namespace A102834.P7713152504131631168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A295661 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102834.P7713152504131631168

/-! ## A102834.P4521325230196503915

`∩[A051144(n+1), A393924(n+1)]`
-/

namespace A102834.P4521325230196503915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P4521325230196503915

/-! ## A102834.P6138991420841538430

`∩[A069236(n+1), A393924(n+1)]`
-/

namespace A102834.P6138991420841538430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102834.P6138991420841538430

/-!
# A102835: Composite numbers whose exponents in their canonical factorization are an initial segment of the positive integers.

The programs for A102835, there is no canonical definition to state claims against.
-/

/-! ## A102835.P11088120889264232875

`∩[A097319(n+1), A212166(n+1)]`
-/

namespace A102835.P11088120889264232875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102835.P11088120889264232875

/-! ## A102835.P18046173904620578178

`filter[A089219(n+1), A359464(#)]`
-/

namespace A102835.P18046173904620578178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A102835.P18046173904620578178

/-! ## A102835.P1473077694187948456

`filter[A089219(n+1), A389905(#)]`
-/

namespace A102835.P1473077694187948456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A102835.P1473077694187948456

/-! ## A102835.P3880889243401879873

`∩[A000379(n+1), A089219(n+1)]`
-/

namespace A102835.P3880889243401879873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102835.P3880889243401879873

/-! ## A102835.P16533106713921146235

`∩[A066428(n+1), A089219(n+1)]`
-/

namespace A102835.P16533106713921146235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102835.P16533106713921146235

/-!
# A102837: Numbers with property that can bring the first digit to the back of the number to get a square (zeros are dropped).

The programs for A102837, there is no canonical definition to state claims against.
-/

/-! ## A102837.P11503760602972257843

`A356417(A077168(n+1))`
-/

namespace A102837.P11503760602972257843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (A077168 (n + 1)).toNat

end

end A102837.P11503760602972257843

/-! ## A102837.P15286522505841628820

`∩[A184427(n+1), A356417(n+1)]`
-/

namespace A102837.P15286522505841628820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102837.P15286522505841628820

/-! ## A102837.P15885184614683750624

`∩[A184431(n+1), A356417(n+1)]`
-/

namespace A102837.P15885184614683750624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102837.P15885184614683750624

/-!
# A102838: Composite numbers whose exponents in their canonical factorization lie in the geometric progression 1, 3, 9, ...

The programs for A102838, there is no canonical definition to state claims against.
-/

/-! ## A102838.P14571842648597283119

`∩[A059172(n+1), A065036(n+1)]`
-/

namespace A102838.P14571842648597283119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P14571842648597283119

/-! ## A102838.P6855958113865955307

`∩[A065036(n+1), A070003(n+1)]`
-/

namespace A102838.P6855958113865955307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P6855958113865955307

/-! ## A102838.P10409222450022669113

`∩[A065036(n+1), A097319(n+1)]`
-/

namespace A102838.P10409222450022669113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P10409222450022669113

/-! ## A102838.P16070359811309450062

`∩[A065036(n+1), A187104(n+1)]`
-/

namespace A102838.P16070359811309450062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P16070359811309450062

/-! ## A102838.P3198666756552836628

`∩[A059172(n+1), A307682(n+1)]`
-/

namespace A102838.P3198666756552836628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P3198666756552836628

/-! ## A102838.P15681923136085412702

`∩[A097319(n+1), A297401(n+1)]`
-/

namespace A102838.P15681923136085412702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P15681923136085412702

/-! ## A102838.P14762577279765212875

`∩[A065036(n+1), A339497(n+1)]`
-/

namespace A102838.P14762577279765212875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P14762577279765212875

/-! ## A102838.P3754844734037176882

`∩[A097319(n+1), A307682(n+1)]`
-/

namespace A102838.P3754844734037176882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P3754844734037176882

/-! ## A102838.P1322067089140374243

`∩[A065036(n+1), A341645(n+1)]`
-/

namespace A102838.P1322067089140374243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P1322067089140374243

/-! ## A102838.P5304356035420960953

`∩[A065036(n+1), A354561(n+1)]`
-/

namespace A102838.P5304356035420960953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102838.P5304356035420960953

/-!
# A102839: a(0) = 0, a(1) = 1, and a(n) = ((2*n - 1)*a(n-1) + 3*n*a(n-2))/(n - 1) for n >= 2.

The programs for A102839, the canonical program `A102839.P718837371539711670` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102839 has offset 0).

The definition of A102839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102839.P718837371539711670

`((2*n-1)*a(n-1)+3*n*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102839

/-- `((2*n-1)*a(n-1)+3*n*a(n-2))/(n-1)` -/
def P718837371539711670.Spec : Prop :=
  ∀ n, P718837371539711670.a n = (A102839 n : ℚ)

end A102839

/-! ## A102839.P10680983115392892463

`abs(∑[n]*A166587(n))`
-/

namespace A102839.P10680983115392892463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A166587 n|

end

end A102839.P10680983115392892463

namespace A102839

/-- `abs(∑[n]*A166587(n))` -/
def P10680983115392892463.Spec : Prop :=
  ∀ n, P10680983115392892463.a n = A102839 n

end A102839

/-! ## A102839.P17517622634541612367

`∑[n]*∑[A105695(n)]`
-/

namespace A102839.P17517622634541612367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A102839.P17517622634541612367

namespace A102839

/-- `∑[n]*∑[A105695(n)]` -/
def P17517622634541612367.Spec : Prop :=
  ∀ n, P17517622634541612367.a n = A102839 n

end A102839

/-! ## A102839.P4590146093969633682

`∑[n]*A086246(n+1)`
-/

namespace A102839.P4590146093969633682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086246 (n + 1)

end

end A102839.P4590146093969633682

namespace A102839

/-- `∑[n]*A086246(n+1)` -/
def P4590146093969633682.Spec : Prop :=
  ∀ n, P4590146093969633682.a n = A102839 n

end A102839

/-! ## A102839.P8112295633345423691

`∑[n]*A168049(n+1)`
-/

namespace A102839.P8112295633345423691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A168049 (n + 1)

end

end A102839.P8112295633345423691

namespace A102839

/-- `∑[n]*A168049(n+1)` -/
def P8112295633345423691.Spec : Prop :=
  ∀ n, P8112295633345423691.a n = A102839 n

end A102839

/-! ## A102839.P2161402064418759716

`abs(∑[n]*Δ[A099323(n)])`
-/

namespace A102839.P2161402064418759716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)|

end

end A102839.P2161402064418759716

namespace A102839

/-- `abs(∑[n]*Δ[A099323(n)])` -/
def P2161402064418759716.Spec : Prop :=
  ∀ n, P2161402064418759716.a n = A102839 n

end A102839

/-! ## A102839.P4099943789271062308

`A132894(n)-a(n-1)` with `a(0)=0`
-/

namespace A102839.P4099943789271062308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A132894 n - a (n - 1)

end

end A102839.P4099943789271062308

namespace A102839

/-- `A132894(n)-a(n-1)` -/
def P4099943789271062308.Spec : Prop :=
  ∀ n, P4099943789271062308.a n = A102839 n

end A102839

/-! ## A102839.P2718119533914677718

`abs(A168051(n+1))*∑[n]`
-/

namespace A102839.P2718119533914677718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 (n + 1)| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102839.P2718119533914677718

namespace A102839

/-- `abs(A168051(n+1))*∑[n]` -/
def P2718119533914677718.Spec : Prop :=
  ∀ n, P2718119533914677718.a n = A102839 n

end A102839

/-! ## A102839.P12001552125652582937

`abs(A292440(n+1))*∑[n]`
-/

namespace A102839.P12001552125652582937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 1)| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A102839.P12001552125652582937

namespace A102839

/-- `abs(A292440(n+1))*∑[n]` -/
def P12001552125652582937.Spec : Prop :=
  ∀ n, P12001552125652582937.a n = A102839 n

end A102839

/-! ## A102839.P10014228681240229294

`∑[n]*A001006(abs(1-n))`
-/

namespace A102839.P10014228681240229294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001006 |1 - (n : ℤ)|.toNat

end

end A102839.P10014228681240229294

namespace A102839

/-- `∑[n]*A001006(abs(1-n))` -/
def P10014228681240229294.Spec : Prop :=
  ∀ n, P10014228681240229294.a n = A102839 n

end A102839

/-! ## A102839.P5571334704997962590

`A168055(n+1)/2*∑[n]`
-/

namespace A102839.P5571334704997962590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168055 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A102839.P5571334704997962590

namespace A102839

/-- `A168055(n+1)/2*∑[n]` -/
def P5571334704997962590.Spec : Prop :=
  ∀ n, P5571334704997962590.a n = (A102839 n : ℚ)

end A102839

/-! ## A102839.P1622892769933072286

`(n+1)/4*Δ[A002426(n)]`
-/

namespace A102839.P1622892769933072286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (f1 (n + 1) - f1 n : ℚ)

end

end A102839.P1622892769933072286

namespace A102839

/-- `(n+1)/4*Δ[A002426(n)]` -/
def P1622892769933072286.Spec : Prop :=
  ∀ n, P1622892769933072286.a n = (A102839 n : ℚ)

end A102839

/-! ## A102839.P1136774713107605881

`(n+1)/4*A025178(n+1)`
-/

namespace A102839.P1136774713107605881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A025178 (n + 1) : ℚ)

end

end A102839.P1136774713107605881

namespace A102839

/-- `(n+1)/4*A025178(n+1)` -/
def P1136774713107605881.Spec : Prop :=
  ∀ n, P1136774713107605881.a n = (A102839 n : ℚ)

end A102839

/-! ## A102839.P15913280376216124220

`A005213(2*n+1)/2*(n+1)`
-/

namespace A102839.P15913280376216124220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005213 (2 * n + 1) : ℚ) / 2 * (n + 1 : ℚ)

end

end A102839.P15913280376216124220

namespace A102839

/-- `A005213(2*n+1)/2*(n+1)` -/
def P15913280376216124220.Spec : Prop :=
  ∀ n, P15913280376216124220.a n = (A102839 n : ℚ)

end A102839

/-! ## A102839.P3079184838596860962

`lcm(∑[n]*A166587(n), A033999(n))`
-/

namespace A102839.P3079184838596860962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A166587 n) (A033999 n)

end

end A102839.P3079184838596860962

namespace A102839

/-- `lcm(∑[n]*A166587(n), A033999(n))` -/
def P3079184838596860962.Spec : Prop :=
  ∀ n, (P3079184838596860962.a n : ℤ) = A102839 n

end A102839

/-! ## A102839.P7622941251069373055

`∑[A109188(n+1)]-A109188(n+1)`
-/

namespace A102839.P7622941251069373055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109188 (n + 1)

end

end A102839.P7622941251069373055

namespace A102839

/-- `∑[A109188(n+1)]-A109188(n+1)` -/
def P7622941251069373055.Spec : Prop :=
  ∀ n, P7622941251069373055.a n = A102839 n

end A102839

/-! ## A102839.P9489062518889206291

`(A109188(n+2)-A092690(n+1))/2`
-/

namespace A102839.P9489062518889206291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109188 (n + 2) - A092690 (n + 1) : ℚ) / 2

end

end A102839.P9489062518889206291

namespace A102839

/-- `(A109188(n+2)-A092690(n+1))/2` -/
def P9489062518889206291.Spec : Prop :=
  ∀ n, P9489062518889206291.a n = (A102839 n : ℚ)

end A102839

/-! ## A102839.P12000065527979727831

`∑[n]*A091836(∑[n])`
-/

namespace A102839.P12000065527979727831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A091836 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A102839.P12000065527979727831

namespace A102839

/-- `∑[n]*A091836(∑[n])` -/
def P12000065527979727831.Spec : Prop :=
  ∀ n, P12000065527979727831.a n = A102839 n

end A102839

/-! ## A102839.P10976381298944169790

`∑[n]*A064645(∑[n]-n)`
-/

namespace A102839.P10976381298944169790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A064645 (∑ j ∈ Finset.range (n + 1), f2 j - n)

end

end A102839.P10976381298944169790

namespace A102839

/-- `∑[n]*A064645(∑[n]-n)` -/
def P10976381298944169790.Spec : Prop :=
  ∀ n, P10976381298944169790.a n = A102839 n

end A102839

/-!
# A102840: a(0)=0, a(1)=1, a(n)=((2*n-1)*a(n-1)-5*n*a(n-2))/(n-1).

The programs for A102840, the canonical program `A102840.P12498252210888013527` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102840 has offset 0).

The definition of A102840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102840.P12498252210888013527

`((2*n-1)*a(n-1)-5*n*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102840

/-- `((2*n-1)*a(n-1)-5*n*a(n-2))/(n-1)` -/
def P12498252210888013527.Spec : Prop :=
  ∀ n, P12498252210888013527.a n = (A102840 n : ℚ)

end A102840

/-! ## A102840.P14471156808387663264

`∑[n]*A100223(n+1)`
-/

namespace A102840.P14471156808387663264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A100223 (n + 1)

end

end A102840.P14471156808387663264

namespace A102840

/-- `∑[n]*A100223(n+1)` -/
def P14471156808387663264.Spec : Prop :=
  ∀ n, P14471156808387663264.a n = A102840 n

end A102840

/-! ## A102840.P9038352063997481435

`∑[n]*A343773(abs(1-n))`
-/

namespace A102840.P9038352063997481435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A343773 |1 - (n : ℤ)|.toNat

end

end A102840.P9038352063997481435

namespace A102840

/-- `∑[n]*A343773(abs(1-n))` -/
def P9038352063997481435.Spec : Prop :=
  ∀ n, P9038352063997481435.a n = A102840 n

end A102840

/-! ## A102840.P5119802393542159720

`A100223(n+1)*A179865(n+1)`
-/

namespace A102840.P5119802393542159720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 (n + 1) * A179865 (n + 1)

end

end A102840.P5119802393542159720

namespace A102840

/-- `A100223(n+1)*A179865(n+1)` -/
def P5119802393542159720.Spec : Prop :=
  ∀ n, P5119802393542159720.a n = A102840 n

end A102840

/-! ## A102840.P11685846051414886859

`A100223(n+1)*A123108(n²+n)`
-/

namespace A102840.P11685846051414886859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 (n + 1) * A123108 (n ^ 2 + n)

end

end A102840.P11685846051414886859

namespace A102840

/-- `A100223(n+1)*A123108(n²+n)` -/
def P11685846051414886859.Spec : Prop :=
  ∀ n, P11685846051414886859.a n = A102840 n

end A102840

/-!
# A102841: a(n) = ((9*n^2 + 33*n + 26)*2^n + (-1)^n)/27.

The programs for A102841, the canonical program `A102841.P9284346486576429099` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102841 has offset 0).

The definition of A102841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9*n²+33*n+26)*2^n+(-1)^n)/27` (program `A102841.P9277478445284498908`, by `A102841.P9277478445284498908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102841.P9284346486576429099

`5*a(n-1)-6*a(n-2)-4*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=5, a(2)=19, a(3)=61`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102841

/-- `5*a(n-1)-6*a(n-2)-4*a(n-3)+8*a(n-4)` -/
def P9284346486576429099.Spec : Prop :=
  ∀ n, P9284346486576429099.a n = A102841 n

theorem P9284346486576429099.correct : P9284346486576429099.Spec := by
  intro n
  simp only [A102841]

end A102841

/-! ## A102841.P9277478445284498908

`((9*n²+33*n+26)*2^n+(-1)^n)/27`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102841.P9277478445284498908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * n ^ 2 + 33 * n + 26) * 2 ^ n : ℤ) + (-1) ^ n : ℚ) / 27

end

end A102841.P9277478445284498908

namespace A102841

/-- `((9*n²+33*n+26)*2^n+(-1)^n)/27` -/
def P9277478445284498908.Spec : Prop :=
  ∀ n, P9277478445284498908.a n = (A102841 n : ℚ)

theorem P9277478445284498908.correct : P9277478445284498908.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A102841, Nat.add_sub_cancel, A102841.P9277478445284498908.a, A102841.P9284346486576429099.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A102841, Nat.add_sub_cancel, A102841.P9277478445284498908.a, A102841.P9284346486576429099.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A102841

/-! ## A102841.P5895482758802431950

`∑[A189052(n+3)]`
-/

namespace A102841.P5895482758802431950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189052 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102841.P5895482758802431950

namespace A102841

/-- `∑[A189052(n+3)]` -/
def P5895482758802431950.Spec : Prop :=
  ∀ n, P5895482758802431950.a n = A102841 n

end A102841

/-! ## A102841.P4266199125237162350

`A045883(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A102841.P4266199125237162350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045883 (n + 1) + 2 * a (n - 1)

end

end A102841.P4266199125237162350

namespace A102841

/-- `A045883(n+1)+2*a(n-1)` -/
def P4266199125237162350.Spec : Prop :=
  ∀ n, P4266199125237162350.a n = A102841 n

end A102841

/-! ## A102841.P8087430047819644920

`∑[A059570(n+1)+2*a(n-1)]` with `a(0)=1`
-/

namespace A102841.P8087430047819644920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A059570 (n + 1) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102841.P8087430047819644920

namespace A102841

/-- `∑[A059570(n+1)+2*a(n-1)]` -/
def P8087430047819644920.Spec : Prop :=
  ∀ n, P8087430047819644920.a n = A102841 n

end A102841

/-! ## A102841.P2968058581339730221

`ogf(1/(1-5x+6x^2+4x^3-8x^4))`
-/

namespace A102841.P2968058581339730221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 6, 4, -8] n

end

end A102841.P2968058581339730221

namespace A102841

/-- `ogf(1/(1-5x+6x^2+4x^3-8x^4))` -/
def P2968058581339730221.Spec : Prop :=
  ∀ n, P2968058581339730221.a n = A102841 n

end A102841

/-! ## A102841.P5977883533886231527

`2^n*∑[n+1]-a(n-1)` with `a(0)=1`
-/

namespace A102841.P5977883533886231527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - a (n - 1)

end

end A102841.P5977883533886231527

namespace A102841

/-- `2^n*∑[n+1]-a(n-1)` -/
def P5977883533886231527.Spec : Prop :=
  ∀ n, P5977883533886231527.a n = A102841 n

end A102841

/-! ## A102841.P2619626107792233165

`abs(a(n-1)-A001788(n+1))` with `a(0)=1`
-/

namespace A102841.P2619626107792233165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A001788 (n + 1)|

end

end A102841.P2619626107792233165

namespace A102841

/-- `abs(a(n-1)-A001788(n+1))` -/
def P2619626107792233165.Spec : Prop :=
  ∀ n, P2619626107792233165.a n = A102841 n

end A102841

/-! ## A102841.P16385038441917807834

`A164984(A167614(n+1))`
-/

namespace A102841.P16385038441917807834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164984 (A167614 (n + 1)).toNat

end

end A102841.P16385038441917807834

namespace A102841

/-- `A164984(A167614(n+1))` -/
def P16385038441917807834.Spec : Prop :=
  ∀ n, P16385038441917807834.a n = A102841 n

end A102841

/-!
# A102842: Insipid numbers: n is defined to be insipid if "G is a primitive subgroup of the symmetric group S_n" implies that "G=A_n or G=S_n".

The programs for A102842, there is no canonical definition to state claims against.
-/

/-! ## A102842.P3951976878949550446

`lt[A000019(n+1), 3]+1`
-/

namespace A102842.P3951976878949550446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A102842.P3951976878949550446

/-! ## A102842.P11820874204441116444

`eq[2, A000019(C(2, n)+n)]`
-/

namespace A102842.P11820874204441116444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102842.P11820874204441116444

/-! ## A102842.P10048462226446973351

`eq[A000019(A028310(n)), A046698(n)]`
-/

namespace A102842.P10048462226446973351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102842.P10048462226446973351

/-! ## A102842.P10598317498511400294

`eq[A000019(A233583(n+1)), A046698(n)]`
-/

namespace A102842.P10598317498511400294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102842.P10598317498511400294

/-! ## A102842.P17026809271594349186

`eq[A000019(A000007(n)+n), A046698(n)]`
-/

namespace A102842.P17026809271594349186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000019 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102842.P17026809271594349186

/-!
# A102844: TrueSoFar number of terms in other bases.

The programs for A102844, there is no canonical definition to state claims against.
-/

/-! ## A102844.P220206099231147674

`A245902(n+1)+A045542(n+2)`
-/

namespace A102844.P220206099231147674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245902 (n + 1) + A045542 (n + 2)

end

end A102844.P220206099231147674

/-!
# A102845: Number of prime factors of the sum of the first n odd primes.

The programs for A102845, the canonical program `A102845.P790045858639460145` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102845 has offset 1).

The definition of A102845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102845.P790045858639460145

`∑{e}[∑[or(1, p?[2*n+1])], #]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102845

/-- `∑{e}[∑[or(1, p?[2*n+1])], #]` -/
def P790045858639460145.Spec : Prop :=
  ∀ n, (P790045858639460145.a n : ℤ) = A102845 (n + 1)

theorem P790045858639460145.correct : P790045858639460145.Spec := by
  intro n
  simp only [A102845, Nat.add_sub_cancel]

end A102845

/-! ## A102845.P8159479633137128315

`∑{e}[A071148(n+1), #]`
-/

namespace A102845.P8159479633137128315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P8159479633137128315

namespace A102845

/-- `∑{e}[A071148(n+1), #]` -/
def P8159479633137128315.Spec : Prop :=
  ∀ n, (P8159479633137128315.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P6676308117261659630

`∑{e}[∑[A065091(n+1)], #]`
-/

namespace A102845.P6676308117261659630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P6676308117261659630

namespace A102845

/-- `∑{e}[∑[A065091(n+1)], #]` -/
def P6676308117261659630.Spec : Prop :=
  ∀ n, (P6676308117261659630.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P15300998439282554904

`∑{e}[∑[A000040(n+2)], #]`
-/

namespace A102845.P15300998439282554904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P15300998439282554904

namespace A102845

/-- `∑{e}[∑[A000040(n+2)], #]` -/
def P15300998439282554904.Spec : Prop :=
  ∀ n, (P15300998439282554904.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P1885449501462105994

`∑{e}[∑[A008578(n+3)], #]`
-/

namespace A102845.P1885449501462105994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P1885449501462105994

namespace A102845

/-- `∑{e}[∑[A008578(n+3)], #]` -/
def P1885449501462105994.Spec : Prop :=
  ∀ n, (P1885449501462105994.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P16780307642607677847

`∑{e}[∑[A073846(2*(n+2))], #]`
-/

namespace A102845.P16780307642607677847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P16780307642607677847

namespace A102845

/-- `∑{e}[∑[A073846(2*(n+2))], #]` -/
def P16780307642607677847.Spec : Prop :=
  ∀ n, (P16780307642607677847.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P4949353561843059662

`∑{e}[∑[record[A006530(3*(n+1))]], #]`
-/

namespace A102845.P4949353561843059662
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P4949353561843059662

namespace A102845

/-- `∑{e}[∑[record[A006530(3*(n+1))]], #]` -/
def P4949353561843059662.Spec : Prop :=
  ∀ n, (P4949353561843059662.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P9082846212800890852

`∑{e}[∑[A020639(p?[2*n+1])], #]`
-/

namespace A102845.P9082846212800890852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102845.P9082846212800890852

namespace A102845

/-- `∑{e}[∑[A020639(p?[2*n+1])], #]` -/
def P9082846212800890852.Spec : Prop :=
  ∀ n, (P9082846212800890852.a n : ℤ) = A102845 (n + 1)

end A102845

/-! ## A102845.P2968574620455506513

`A028310(∑{e}[∑[p?[2*n+1]], #])`
-/

namespace A102845.P2968574620455506513
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A102845.P2968574620455506513

namespace A102845

/-- `A028310(∑{e}[∑[p?[2*n+1]], #])` -/
def P2968574620455506513.Spec : Prop :=
  ∀ n, P2968574620455506513.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P12314157398769015272

`A001222(∑[p?[Δ[n²]]])`
-/

namespace A102845.P12314157398769015272
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102845.P12314157398769015272

namespace A102845

/-- `A001222(∑[p?[Δ[n²]]])` -/
def P12314157398769015272.Spec : Prop :=
  ∀ n, P12314157398769015272.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P16633051473068436987

`A001222(A071148(n+1))`
-/

namespace A102845.P16633051473068436987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071148 (n + 1)).toNat

end

end A102845.P16633051473068436987

namespace A102845

/-- `A001222(A071148(n+1))` -/
def P16633051473068436987.Spec : Prop :=
  ∀ n, P16633051473068436987.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P11800319735523530922

`A001222(∑[A065091(n+1)])`
-/

namespace A102845.P11800319735523530922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102845.P11800319735523530922

namespace A102845

/-- `A001222(∑[A065091(n+1)])` -/
def P11800319735523530922.Spec : Prop :=
  ∀ n, P11800319735523530922.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P14206920831191305487

`A001222(∑[A000040(n+2)])`
-/

namespace A102845.P14206920831191305487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102845.P14206920831191305487

namespace A102845

/-- `A001222(∑[A000040(n+2)])` -/
def P14206920831191305487.Spec : Prop :=
  ∀ n, P14206920831191305487.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P5164204902254111580

`A001222(∑[A006005(n+2)])`
-/

namespace A102845.P5164204902254111580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102845.P5164204902254111580

namespace A102845

/-- `A001222(∑[A006005(n+2)])` -/
def P5164204902254111580.Spec : Prop :=
  ∀ n, P5164204902254111580.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P3364392060109259979

`A001222(∑[A008578(n+3)])`
-/

namespace A102845.P3364392060109259979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102845.P3364392060109259979

namespace A102845

/-- `A001222(∑[A008578(n+3)])` -/
def P3364392060109259979.Spec : Prop :=
  ∀ n, P3364392060109259979.a n = A102845 (n + 1)

end A102845

/-! ## A102845.P15904468002267944424

`A001222(∑[A182986(n+3)])`
-/

namespace A102845.P15904468002267944424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102845.P15904468002267944424

namespace A102845

/-- `A001222(∑[A182986(n+3)])` -/
def P15904468002267944424.Spec : Prop :=
  ∀ n, P15904468002267944424.a n = A102845 (n + 1)

end A102845

/-!
# A102846: a(0)=1, a(1)=1, a(n) = a(n-1)*a(n-2) + 2.

The programs for A102846, the canonical program `A102846.P1708720410950008326` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102846 has offset 0).

The definition of A102846 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+2` (program `A102846.P1708720410950008326`, by `A102846.P1708720410950008326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102846.P1708720410950008326

`a(n-1)*a(n-2)+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102846

/-- `a(n-1)*a(n-2)+2` -/
def P1708720410950008326.Spec : Prop :=
  ∀ n, (P1708720410950008326.a n : ℤ) = A102846 n

theorem P1708720410950008326.correct : P1708720410950008326.Spec := by
  intro n
  simp only [A102846]

end A102846

/-! ## A102846.P16848101017570240503

`lcm(a(n-1), a(n-2))+2` with `a(0)=1, a(1)=1`
-/

namespace A102846.P16848101017570240503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.lcm (a (n - 1)) (a (n - 2)) + 2

end

end A102846.P16848101017570240503

namespace A102846

/-- `lcm(a(n-1), a(n-2))+2` -/
def P16848101017570240503.Spec : Prop :=
  ∀ n, (P16848101017570240503.a n : ℤ) = A102846 n

end A102846

/-! ## A102846.P16974988878176264643

`a(n-1)/a(n-2)^(-1)+2` with `a(0)=1, a(1)=1`
-/

namespace A102846.P16974988878176264643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ) + 2

end

end A102846.P16974988878176264643

namespace A102846

/-- `a(n-1)/a(n-2)^(-1)+2` -/
def P16974988878176264643.Spec : Prop :=
  ∀ n, P16974988878176264643.a n = (A102846 n : ℚ)

end A102846

/-! ## A102846.P963526277651948989

`4-(4/2-a(n-1)*a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A102846.P963526277651948989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 - ((4 : ℚ) / 2 - a (n - 1) * a (n - 2))

end

end A102846.P963526277651948989

namespace A102846

/-- `4-(4/2-a(n-1)*a(n-2))` -/
def P963526277651948989.Spec : Prop :=
  ∀ n, P963526277651948989.a n = (A102846 n : ℚ)

end A102846

/-! ## A102846.P15706755893075546099

`2-((1-a(n-2))*a(n-1)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A102846.P15706755893075546099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 - ((1 - a (n - 2)) * a (n - 1) - a (n - 1))

end

end A102846.P15706755893075546099

namespace A102846

/-- `2-((1-a(n-2))*a(n-1)-a(n-1))` -/
def P15706755893075546099.Spec : Prop :=
  ∀ n, P15706755893075546099.a n = A102846 n

end A102846

/-!
# A102847: a(0) = 1, a(n) = a(n-1)*a(n-1) + 2.

The programs for A102847, the canonical program `A102847.P14611460867394718743` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102847 has offset 0).

The definition of A102847 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-1)+2` (program `A102847.P14611460867394718743`, by `A102847.P14611460867394718743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102847.P10302794214017325791

`2+a(n-1)²` with `a(0)=1`
-/

namespace A102847.P10302794214017325791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 + a (n - 1) ^ 2

end

end A102847.P10302794214017325791

namespace A102847

/-- `2+a(n-1)²` -/
def P10302794214017325791.Spec : Prop :=
  ∀ n, (P10302794214017325791.a n : ℤ) = A102847 n

theorem P10302794214017325791.correct : P10302794214017325791.Spec := by
  intro n
  simp only [A102847, Nat.add_sub_cancel, A102847.P10302794214017325791.a, A102847.P14611460867394718743.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A102847

/-! ## A102847.P14611460867394718743

`a(n-1)*a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102847

/-- `a(n-1)*a(n-1)+2` -/
def P14611460867394718743.Spec : Prop :=
  ∀ n, (P14611460867394718743.a n : ℤ) = A102847 n

theorem P14611460867394718743.correct : P14611460867394718743.Spec := by
  intro n
  simp only [A102847]

end A102847

/-! ## A102847.P9507796142953360263

`or(2, a(n-1)²)` with `a(0)=1`
-/

namespace A102847.P9507796142953360263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 2 (a (n - 1) ^ 2)

end

end A102847.P9507796142953360263

namespace A102847

/-- `or(2, a(n-1)²)` -/
def P9507796142953360263.Spec : Prop :=
  ∀ n, (P9507796142953360263.a n : ℤ) = A102847 n

end A102847

/-! ## A102847.P1724172938809367710

`xor(2, a(n-1)²)` with `a(0)=1`
-/

namespace A102847.P1724172938809367710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 2 (a (n - 1) ^ 2)

end

end A102847.P1724172938809367710

namespace A102847

/-- `xor(2, a(n-1)²)` -/
def P1724172938809367710.Spec : Prop :=
  ∀ n, (P1724172938809367710.a n : ℤ) = A102847 n

end A102847

/-! ## A102847.P18158020846350409519

`A065653(2*n+1)`
-/

namespace A102847.P18158020846350409519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065653 (2 * n + 1)

end

end A102847.P18158020846350409519

namespace A102847

/-- `A065653(2*n+1)` -/
def P18158020846350409519.Spec : Prop :=
  ∀ n, P18158020846350409519.a n = A102847 n

end A102847

/-!
# A102848: Number of partitions of n into Fibonacci number of integer parts.

The programs for A102848, there is no canonical definition to state claims against.
-/

/-! ## A102848.P12979144316496764454

`A257639(∑[A301596(n+1)])`
-/

namespace A102848.P12979144316496764454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102848.P12979144316496764454

/-! ## A102848.P11116939510596154370

`A002024(A269628(n)-A182712(n))`
-/

namespace A102848.P11116939510596154370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A269628 n - A182712 n).toNat

end

end A102848.P11116939510596154370

/-! ## A102848.P8444711666740220085

`A002024(A269628(n)-A241735(n))`
-/

namespace A102848.P8444711666740220085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A269628 n - A241735 n).toNat

end

end A102848.P8444711666740220085

/-! ## A102848.P3117282948645591056

`A225687(A262194(n+3))`
-/

namespace A102848.P3117282948645591056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A262194 (n + 3)).toNat

end

end A102848.P3117282948645591056

/-! ## A102848.P9712783230124716906

`A003056(A269628(n)+A003558(n))`
-/

namespace A102848.P9712783230124716906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A269628 n + A003558 n).toNat

end

end A102848.P9712783230124716906

/-!
# A102849: Position of the winner in a "5-Boom" game with n players, if all n are rational and act to stay for the longest time possible.

The programs for A102849, there is no canonical definition to state claims against.
-/

/-! ## A102849.P4172046487088206707

`A088333(n+1)-A127326(A121133(A214246(n)))`
-/

namespace A102849.P4172046487088206707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1) - A127326 (A121133 (A214246 n).toNat).toNat

end

end A102849.P4172046487088206707

/-! ## A102849.P13431886929252989074

`A088333(n+1)+A014057(A000569(n+1))`
-/

namespace A102849.P13431886929252989074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1) + A014057 (A000569 (n + 1)).toNat

end

end A102849.P13431886929252989074

/-! ## A102849.P6419504766991892807

`A088333(n+1)-A055641(A291154(n+1))`
-/

namespace A102849.P6419504766991892807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1) - A055641 (A291154 (n + 1)).toNat

end

end A102849.P6419504766991892807

/-! ## A102849.P5602980602948873331

`A088333(n+1)-A185709(A063834(n))`
-/

namespace A102849.P5602980602948873331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1) - A185709 (A063834 n).toNat

end

end A102849.P5602980602948873331

/-! ## A102849.P10916832559299843988

`A088333(n+1)-A253513(A001405(n))`
-/

namespace A102849.P10916832559299843988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088333 (n + 1) - A253513 (A001405 n).toNat

end

end A102849.P10916832559299843988

/-!
# A102851: Primes of the form 19n + 5.

The programs for A102851, the canonical program `A102851.P2293259666346344215` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102851 has offset 1).

The definition of A102851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102851.P2293259666346344215

`∪[A142668(n+1), A142691(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102851

/-- `∪[A142668(n+1), A142691(n+1)]` -/
def P2293259666346344215.Spec : Prop :=
  ∀ n, (P2293259666346344215.a n : ℤ) = A102851 (n + 1)

theorem P2293259666346344215.correct : P2293259666346344215.Spec := by
  intro n
  simp only [A102851, Nat.add_sub_cancel]

end A102851

/-! ## A102851.P8522635972619862320

`p?[19*n+5]`
-/

namespace A102851.P8522635972619862320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102851.P8522635972619862320

namespace A102851

/-- `p?[19*n+5]` -/
def P8522635972619862320.Spec : Prop :=
  ∀ n, (P8522635972619862320.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P13338640726187453394

`∩[A215133(n+1), A215170(n+1)]`
-/

namespace A102851.P13338640726187453394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P13338640726187453394

namespace A102851

/-- `∩[A215133(n+1), A215170(n+1)]` -/
def P13338640726187453394.Spec : Prop :=
  ∀ n, (P13338640726187453394.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P6143487575632970034

`∩[A215133(n+1), A215274(n+1)]`
-/

namespace A102851.P6143487575632970034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P6143487575632970034

namespace A102851

/-- `∩[A215133(n+1), A215274(n+1)]` -/
def P6143487575632970034.Spec : Prop :=
  ∀ n, (P6143487575632970034.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P17342486634560719764

`∩[A215133(n+1), A215213(n+1)]`
-/

namespace A102851.P17342486634560719764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P17342486634560719764

namespace A102851

/-- `∩[A215133(n+1), A215213(n+1)]` -/
def P17342486634560719764.Spec : Prop :=
  ∀ n, (P17342486634560719764.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P10171738570800515832

`∩[A106863(n+1), A215105(n+1)]`
-/

namespace A102851.P10171738570800515832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P10171738570800515832

namespace A102851

/-- `∩[A106863(n+1), A215105(n+1)]` -/
def P10171738570800515832.Spec : Prop :=
  ∀ n, (P10171738570800515832.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P4423130159889286209

`∩[A106863(n+1), A215170(n+1)]`
-/

namespace A102851.P4423130159889286209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P4423130159889286209

namespace A102851

/-- `∩[A106863(n+1), A215170(n+1)]` -/
def P4423130159889286209.Spec : Prop :=
  ∀ n, (P4423130159889286209.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P13048931581817046904

`∩[A191019(n+1), A215105(n+1)]`
-/

namespace A102851.P13048931581817046904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P13048931581817046904

namespace A102851

/-- `∩[A191019(n+1), A215105(n+1)]` -/
def P13048931581817046904.Spec : Prop :=
  ∀ n, (P13048931581817046904.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P15460354031578276389

`∩[A191019(n+1), A215170(n+1)]`
-/

namespace A102851.P15460354031578276389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P15460354031578276389

namespace A102851

/-- `∩[A191019(n+1), A215170(n+1)]` -/
def P15460354031578276389.Spec : Prop :=
  ∀ n, (P15460354031578276389.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P16689694173146179889

`∩[A215105(n+1), A341787(n+1)]`
-/

namespace A102851.P16689694173146179889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P16689694173146179889

namespace A102851

/-- `∩[A215105(n+1), A341787(n+1)]` -/
def P16689694173146179889.Spec : Prop :=
  ∀ n, (P16689694173146179889.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P13447618258442925124

`∩[A215170(n+1), A341787(n+1)]`
-/

namespace A102851.P13447618258442925124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P13447618258442925124

namespace A102851

/-- `∩[A215170(n+1), A341787(n+1)]` -/
def P13447618258442925124.Spec : Prop :=
  ∀ n, (P13447618258442925124.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P16291705411342693295

`∩[A049551(n+1), A306331(n+1)-1]`
-/

namespace A102851.P16291705411342693295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P16291705411342693295

namespace A102851

/-- `∩[A049551(n+1), A306331(n+1)-1]` -/
def P16291705411342693295.Spec : Prop :=
  ∀ n, (P16291705411342693295.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P5249808408781987791

`∩[A000040(n+1), A242215(n)+n]`
-/

namespace A102851.P5249808408781987791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P5249808408781987791

namespace A102851

/-- `∩[A000040(n+1), A242215(n)+n]` -/
def P5249808408781987791.Spec : Prop :=
  ∀ n, (P5249808408781987791.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P11537747634684456204

`∩[A006005(n+1), A242215(n)+n]`
-/

namespace A102851.P11537747634684456204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P11537747634684456204

namespace A102851

/-- `∩[A006005(n+1), A242215(n)+n]` -/
def P11537747634684456204.Spec : Prop :=
  ∀ n, (P11537747634684456204.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P12498449065279045058

`∩[A033946(n+1), A242215(n)+n]`
-/

namespace A102851.P12498449065279045058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P12498449065279045058

namespace A102851

/-- `∩[A033946(n+1), A242215(n)+n]` -/
def P12498449065279045058.Spec : Prop :=
  ∀ n, (P12498449065279045058.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P2404516067501802026

`∩[A046022(n+1), A242215(n)+n]`
-/

namespace A102851.P2404516067501802026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P2404516067501802026

namespace A102851

/-- `∩[A046022(n+1), A242215(n)+n]` -/
def P2404516067501802026.Spec : Prop :=
  ∀ n, (P2404516067501802026.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P3715580288658245554

`∩[A051948(n+1), A242215(n)+n]`
-/

namespace A102851.P3715580288658245554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P3715580288658245554

namespace A102851

/-- `∩[A051948(n+1), A242215(n)+n]` -/
def P3715580288658245554.Spec : Prop :=
  ∀ n, (P3715580288658245554.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P16988113615994805227

`∩[A053813(n+1), A242215(n)+n]`
-/

namespace A102851.P16988113615994805227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P16988113615994805227

namespace A102851

/-- `∩[A053813(n+1), A242215(n)+n]` -/
def P16988113615994805227.Spec : Prop :=
  ∀ n, (P16988113615994805227.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P763828670212637421

`∩[A062972(n+1), A242215(n)+n]`
-/

namespace A102851.P763828670212637421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P763828670212637421

namespace A102851

/-- `∩[A062972(n+1), A242215(n)+n]` -/
def P763828670212637421.Spec : Prop :=
  ∀ n, (P763828670212637421.a n : ℤ) = A102851 (n + 1)

end A102851

/-! ## A102851.P8451249575538050704

`∩[A065396(n+1), A242215(n)+n]`
-/

namespace A102851.P8451249575538050704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102851.P8451249575538050704

namespace A102851

/-- `∩[A065396(n+1), A242215(n)+n]` -/
def P8451249575538050704.Spec : Prop :=
  ∀ n, (P8451249575538050704.a n : ℤ) = A102851 (n + 1)

end A102851

/-!
# A102852: Primes whose squares are congruent to 5 (modulo 19).

The programs for A102852, there is no canonical definition to state claims against.
-/

/-! ## A102852.P16811461765054271664

`p?[or(1, 19*n+9)]`
-/

namespace A102852.P16811461765054271664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (19 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102852.P16811461765054271664

/-! ## A102852.P83132476774298234

`p?[a(n-2)+19]` with `a(0)=9, a(1)=10`
-/

namespace A102852.P83132476774298234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 10] fun n f1 =>
  f1 (n - 2) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102852.P83132476774298234

/-! ## A102852.P15003777104673250694

`p?[n%2+19*n+9]`
-/

namespace A102852.P15003777104673250694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (19 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102852.P15003777104673250694

/-! ## A102852.P10640359557312925662

`p?[and(1, n)+19*n+9]`
-/

namespace A102852.P10640359557312925662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (19 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A102852.P10640359557312925662

/-! ## A102852.P1414370336300183438

`p?[19*n-9-and(1, n)]`
-/

namespace A102852.P1414370336300183438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n : ℤ) - 9 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102852.P1414370336300183438

/-!
# A102853: Number of prime factors (with multiplicity) of number of points on surface of square pyramid.

The programs for A102853, the canonical program `A102853.P13627313122998968039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102853 has offset 0).

The definition of A102853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102853.P13627313122998968039

`A001222(3*n²+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A102853

/-- `A001222(3*n²+2)` -/
def P13627313122998968039.Spec : Prop :=
  ∀ n, P13627313122998968039.a n = A102853 n

theorem P13627313122998968039.correct : P13627313122998968039.Spec := by
  intro n
  simp only [A102853]

end A102853

/-! ## A102853.P14914757182353606163

`∑{e}[3*n²+2, #]`
-/

namespace A102853.P14914757182353606163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102853.P14914757182353606163

namespace A102853

/-- `∑{e}[3*n²+2, #]` -/
def P14914757182353606163.Spec : Prop :=
  ∀ n, (P14914757182353606163.a n : ℤ) = A102853 n

end A102853

/-! ## A102853.P18164788171035400651

`log2(∏{e}[3*n²+2, 2^#])`
-/

namespace A102853.P18164788171035400651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A102853.P18164788171035400651

namespace A102853

/-- `log2(∏{e}[3*n²+2, 2^#])` -/
def P18164788171035400651.Spec : Prop :=
  ∀ n, P18164788171035400651.a n = (A102853 n : ℝ)

end A102853

/-! ## A102853.P11029133718599506376

`A114800(∑{e}[1-lcm(3, n²+1), #])`
-/

namespace A102853.P11029133718599506376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 3 (n ^ 2 + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102853.P11029133718599506376

namespace A102853

/-- `A114800(∑{e}[1-lcm(3, n²+1), #])` -/
def P11029133718599506376.Spec : Prop :=
  ∀ n, P11029133718599506376.a n = A102853 n

end A102853

/-! ## A102853.P8882562765248110974

`A007953(∑{e}[A033428(n)+2, #])`
-/

namespace A102853.P8882562765248110974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102853.P8882562765248110974

namespace A102853

/-- `A007953(∑{e}[A033428(n)+2, #])` -/
def P8882562765248110974.Spec : Prop :=
  ∀ n, P8882562765248110974.a n = A102853 n

end A102853

/-! ## A102853.P7481711342213200847

`A068189(∑{e}[A033428(n)+2, #])`
-/

namespace A102853.P7481711342213200847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102853.P7481711342213200847

namespace A102853

/-- `A068189(∑{e}[A033428(n)+2, #])` -/
def P7481711342213200847.Spec : Prop :=
  ∀ n, P7481711342213200847.a n = A102853 n

end A102853

/-! ## A102853.P11656656519980878148

`A350076(∑{e}[A033428(n)+2, #])`
-/

namespace A102853.P11656656519980878148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350076 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A102853.P11656656519980878148

namespace A102853

/-- `A350076(∑{e}[A033428(n)+2, #])` -/
def P11656656519980878148.Spec : Prop :=
  ∀ n, P11656656519980878148.a n = A102853 n

end A102853

/-! ## A102853.P15245056338564302897

`∑{e}[2*n*3*n+4, #]-1`
-/

namespace A102853.P15245056338564302897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (3 * n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A102853.P15245056338564302897

namespace A102853

/-- `∑{e}[2*n*3*n+4, #]-1` -/
def P15245056338564302897.Spec : Prop :=
  ∀ n, P15245056338564302897.a n = A102853 n

end A102853

/-! ## A102853.P5883539919141073659

`dr(A001222(n*3*n+2))`
-/

namespace A102853.P5883539919141073659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001222 (n * (3 * n) + 2))

end

end A102853.P5883539919141073659

namespace A102853

/-- `dr(A001222(n*3*n+2))` -/
def P5883539919141073659.Spec : Prop :=
  ∀ n, (P5883539919141073659.a n : ℤ) = A102853 n

end A102853

/-! ## A102853.P11163843453404965158

`A262527(A001222(3*n*n+2))`
-/

namespace A102853.P11163843453404965158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262527 (A001222 (3 * (n * n) + 2)).toNat

end

end A102853.P11163843453404965158

namespace A102853

/-- `A262527(A001222(3*n*n+2))` -/
def P11163843453404965158.Spec : Prop :=
  ∀ n, P11163843453404965158.a n = A102853 n

end A102853

/-! ## A102853.P18043369711455723701

`A001222(A056106(n)+n+1)%A000040(n+1)`
-/

namespace A102853.P18043369711455723701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A056106 n + (n + 1 : ℤ)).toNat) (A000040 (n + 1))

end

end A102853.P18043369711455723701

namespace A102853

/-- `A001222(A056106(n)+n+1)%A000040(n+1)` -/
def P18043369711455723701.Spec : Prop :=
  ∀ n, P18043369711455723701.a n = A102853 n

end A102853

/-! ## A102853.P4902741635440816928

`A001222(A097803(n)+1)-1`
-/

namespace A102853.P4902741635440816928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097803 n + 1).toNat - 1

end

end A102853.P4902741635440816928

namespace A102853

/-- `A001222(A097803(n)+1)-1` -/
def P4902741635440816928.Spec : Prop :=
  ∀ n, P4902741635440816928.a n = A102853 n

end A102853

/-! ## A102853.P3828136936100775626

`A001222(A016957(n²))-1`
-/

namespace A102853.P3828136936100775626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016957 (n ^ 2)).toNat - 1

end

end A102853.P3828136936100775626

namespace A102853

/-- `A001222(A016957(n²))-1` -/
def P3828136936100775626.Spec : Prop :=
  ∀ n, P3828136936100775626.a n = A102853 n

end A102853

/-!
# A102856: Sum of 1 or 2 distinct tetrahedral numbers.

The programs for A102856, there is no canonical definition to state claims against.
-/

/-! ## A102856.P10545606526583724453

`∪[A000292(n), A102801(n+1)]`
-/

namespace A102856.P10545606526583724453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102856.P10545606526583724453

/-! ## A102856.P14537495637942160539

`eq[1, A097325(A331919(n))]`
-/

namespace A102856.P14537495637942160539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A331919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102856.P14537495637942160539

/-! ## A102856.P17348961636542488422

`eq[A099837(3*n+4), A099837(A331919(n))]`
-/

namespace A102856.P17348961636542488422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A331919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102856.P17348961636542488422

/-!
# A102857: Sum of 1, 2 or 3 distinct tetrahedral numbers.

The programs for A102857, there is no canonical definition to state claims against.
-/

/-! ## A102857.P15469331169924526978

`∪[A102802(n+1), A102856(n+1)]`
-/

namespace A102857.P15469331169924526978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102857.P15469331169924526978

/-! ## A102857.P13089835640802425705

`A102858(n+1)%A130000(n+1)`
-/

namespace A102857.P13089835640802425705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102858 (n + 1)) (A130000 (n + 1))

end

end A102857.P13089835640802425705

/-! ## A102857.P8253167125344713098

`comp[A102806(n+1)]%A269747(2*(n+1))`
-/

namespace A102857.P8253167125344713098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102806 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A269747 (2 * (n + 1)))

end

end A102857.P8253167125344713098

/-! ## A102857.P4388652347481801662

`A102858(n+1)%A125017(A064094(n))`
-/

namespace A102857.P4388652347481801662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102858 (n + 1)) (A125017 (A064094 n).toNat)

end

end A102857.P4388652347481801662

/-! ## A102857.P1226823152649248689

`A102858(n+1)+A000122(A068130(n+1))`
-/

namespace A102857.P1226823152649248689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102858 (n + 1) + A000122 (A068130 (n + 1)).toNat

end

end A102857.P1226823152649248689

/-!
# A102858: Sum of 1, 2, or 4 distinct tetrahedral numbers.

The programs for A102858, there is no canonical definition to state claims against.
-/

/-! ## A102858.P7022976520361130893

`∪[A102803(n+1), A102857(n+1)]`
-/

namespace A102858.P7022976520361130893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102858.P7022976520361130893

/-! ## A102858.P10214192302665758009

`comp[A102806(n+1)]%A300272(n+1)`
-/

namespace A102858.P10214192302665758009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102806 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A300272 (n + 1))

end

end A102858.P10214192302665758009

/-! ## A102858.P11769861559315169278

`lt[A281082(n), A028566(A279278(n))]`
-/

namespace A102858.P11769861559315169278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 (A279278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P11769861559315169278

/-! ## A102858.P10306909278102366630

`lt[A106226(n), A004935(A331919(n))]`
-/

namespace A102858.P10306909278102366630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 (A331919 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P10306909278102366630

/-! ## A102858.P7020541248770357661

`lt[A330551(n+1), A033584(A279278(n))]`
-/

namespace A102858.P7020541248770357661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033584 (A279278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P7020541248770357661

/-! ## A102858.P10123385707093537447

`lt[A275024(n+1), A244869(A279278(n))]`
-/

namespace A102858.P10123385707093537447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 (A279278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P10123385707093537447

/-! ## A102858.P9551262662610031877

`lt[A324539(A299258(2*n+1)), A331919(n)]`
-/

namespace A102858.P9551262662610031877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (A299258 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P9551262662610031877

/-! ## A102858.P17288590138744155811

`A000194(comp[A102806(n+1)]²)`
-/

namespace A102858.P17288590138744155811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102806 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A102858.P17288590138744155811

/-! ## A102858.P18330790636077994971

`lt[A000007(A084758(n+1)), A279278(n)]`
-/

namespace A102858.P18330790636077994971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A084758 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279278 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P18330790636077994971

/-! ## A102858.P9656559977012146989

`lt[A111855(A168208(n+1)), A331919(n)]`
-/

namespace A102858.P9656559977012146989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111855 (A168208 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102858.P9656559977012146989

/-!
# A102859: Numbers that when squared and written backwards give a square again.

The programs for A102859, there is no canonical definition to state claims against.
-/

/-! ## A102859.P2429515378029212584

`sqrt(A061457(n+1))`
-/

namespace A102859.P2429515378029212584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061457 (n + 1) : ℝ)

end

end A102859.P2429515378029212584

/-! ## A102859.P16949221145692987614

`A061457(n+1)^(A000124(n)/A014206(n))`
-/

namespace A102859.P16949221145692987614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061457 (n + 1) : ℝ) ^ ((A000124 n : ℚ) / (A014206 n : ℚ) : ℝ)

end

end A102859.P16949221145692987614

/-! ## A102859.P4639701124790509866

`A061457(n+1)^(A005408(n)/A016825(n))`
-/

namespace A102859.P4639701124790509866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061457 (n + 1) : ℝ) ^ ((A005408 n : ℚ) / (A016825 n : ℚ) : ℝ)

end

end A102859.P4639701124790509866

/-! ## A102859.P11392502022576707955

`∪[A061909(n+1), A129914(n+1)]`
-/

namespace A102859.P11392502022576707955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A102859.P11392502022576707955

/-! ## A102859.P6001752795261544209

`sqrt(∩[A306273(n+1), n²])`
-/

namespace A102859.P6001752795261544209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A102859.P6001752795261544209

/-!
# A102860: Number of ways to change three non-identical letters in the word aabbccdd..., where there are n types of letters.

The programs for A102860, the canonical program `A102860.P9705750326719857205` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102860 has offset 2).

The definition of A102860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102860.P6130297635907099674

`16*C(n+2, 3)`
-/

namespace A102860.P6130297635907099674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * Nat.choose (n + 2) 3

end

end A102860.P6130297635907099674

namespace A102860

/-- `16*C(n+2, 3)` -/
def P6130297635907099674.Spec : Prop :=
  ∀ n, (P6130297635907099674.a n : ℤ) = A102860 (n + 2)

end A102860

/-! ## A102860.P6601646448064207811

`8*(n+2)*(n+1)*n/3`
-/

namespace A102860.P6601646448064207811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) * (n + 1) * n : ℚ) / 3

end

end A102860.P6601646448064207811

namespace A102860

/-- `8*(n+2)*(n+1)*n/3` -/
def P6601646448064207811.Spec : Prop :=
  ∀ n, P6601646448064207811.a n = (A102860 (n + 2) : ℚ)

theorem P6601646448064207811.correct : P6601646448064207811.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A102860, Nat.add_sub_cancel, A102860.P6601646448064207811.a, A102860.P9705750326719857205.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A102860, Nat.add_sub_cancel, A102860.P6601646448064207811.a, A102860.P9705750326719857205.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A102860

/-! ## A102860.P9705750326719857205

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=16, a(2)=64, a(3)=160`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102860

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P9705750326719857205.Spec : Prop :=
  ∀ n, P9705750326719857205.a n = A102860 (n + 2)

theorem P9705750326719857205.correct : P9705750326719857205.Spec := by
  intro n
  simp only [A102860, Nat.add_sub_cancel]

end A102860

/-! ## A102860.P1097760828961382147

`16*A000292(n)`
-/

namespace A102860.P1097760828961382147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000292 n

end

end A102860.P1097760828961382147

namespace A102860

/-- `16*A000292(n)` -/
def P1097760828961382147.Spec : Prop :=
  ∀ n, P1097760828961382147.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P11145513883308472640

`abs(∑[∑[a(n-1)+16]])` with `a(0)=0`
-/

namespace A102860.P11145513883308472640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102860.P11145513883308472640

namespace A102860

/-- `abs(∑[∑[a(n-1)+16]])` -/
def P11145513883308472640.Spec : Prop :=
  ∀ n, (P11145513883308472640.a n : ℤ) = A102860 (n + 2)

end A102860

/-! ## A102860.P13787463518806433784

`floor(∑[∑[a(n-1)+16]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A102860.P13787463518806433784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102860.P13787463518806433784

namespace A102860

/-- `floor(∑[∑[a(n-1)+16]])` -/
def P13787463518806433784.Spec : Prop :=
  ∀ n, (P13787463518806433784.a n : ℤ) = A102860 (n + 2)

end A102860

/-! ## A102860.P8870040347941237967

`a(n-2)+(4*n)²` with `a(0)=0, a(1)=16`
-/

namespace A102860.P8870040347941237967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n a =>
  a (n - 2) + (4 * n) ^ 2

end

end A102860.P8870040347941237967

namespace A102860

/-- `a(n-2)+(4*n)²` -/
def P8870040347941237967.Spec : Prop :=
  ∀ n, (P8870040347941237967.a n : ℤ) = A102860 (n + 2)

end A102860

/-! ## A102860.P14099576874277424446

`∑[(4*n)²]-a(n-1)` with `a(0)=0`
-/

namespace A102860.P14099576874277424446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A102860.P14099576874277424446

namespace A102860

/-- `∑[(4*n)²]-a(n-1)` -/
def P14099576874277424446.Spec : Prop :=
  ∀ n, P14099576874277424446.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P6438250214064758400

`floor(a(n-1)+8*n*(n+1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A102860.P6438250214064758400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 8 * (n * (n + 1))

end

end A102860.P6438250214064758400

namespace A102860

/-- `floor(a(n-1)+8*n*(n+1))` -/
def P6438250214064758400.Spec : Prop :=
  ∀ n, (P6438250214064758400.a n : ℤ) = A102860 (n + 2)

end A102860

/-! ## A102860.P12132685685545487927

`∑[A035008(n)]`
-/

namespace A102860.P12132685685545487927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102860.P12132685685545487927

namespace A102860

/-- `∑[A035008(n)]` -/
def P12132685685545487927.Spec : Prop :=
  ∀ n, P12132685685545487927.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P1937912244898610426

`4*A210440(n)`
-/

namespace A102860.P1937912244898610426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A210440 n

end

end A102860.P1937912244898610426

namespace A102860

/-- `4*A210440(n)` -/
def P1937912244898610426.Spec : Prop :=
  ∀ n, P1937912244898610426.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P5600114191913243051

`∑[∑[A008598(n)]]`
-/

namespace A102860.P5600114191913243051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102860.P5600114191913243051

namespace A102860

/-- `∑[∑[A008598(n)]]` -/
def P5600114191913243051.Spec : Prop :=
  ∀ n, P5600114191913243051.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P13539245815834703613

`2*(A273316(n)-1)`
-/

namespace A102860.P13539245815834703613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A273316 n - 1)

end

end A102860.P13539245815834703613

namespace A102860

/-- `2*(A273316(n)-1)` -/
def P13539245815834703613.Spec : Prop :=
  ∀ n, P13539245815834703613.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P15186835203233236657

`A152110(n)/2-(n+2)`
-/

namespace A102860.P15186835203233236657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152110 n : ℚ) / 2 - (n + 2 : ℚ)

end

end A102860.P15186835203233236657

namespace A102860

/-- `A152110(n)/2-(n+2)` -/
def P15186835203233236657.Spec : Prop :=
  ∀ n, P15186835203233236657.a n = (A102860 (n + 2) : ℚ)

end A102860

/-! ## A102860.P8169293864393874806

`∑[A069129(n+1)]-(n+1)`
-/

namespace A102860.P8169293864393874806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A102860.P8169293864393874806

namespace A102860

/-- `∑[A069129(n+1)]-(n+1)` -/
def P8169293864393874806.Spec : Prop :=
  ∀ n, P8169293864393874806.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P4271107372850318996

`∑[A194431(n+1)]-(n+1)²`
-/

namespace A102860.P4271107372850318996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A102860.P4271107372850318996

namespace A102860

/-- `∑[A194431(n+1)]-(n+1)²` -/
def P4271107372850318996.Spec : Prop :=
  ∀ n, P4271107372850318996.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P15487420306500640032

`A139278(n)+A063523(n)`
-/

namespace A102860.P15487420306500640032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139278 n + A063523 n

end

end A102860.P15487420306500640032

namespace A102860

/-- `A139278(n)+A063523(n)` -/
def P15487420306500640032.Spec : Prop :=
  ∀ n, P15487420306500640032.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P8318674616010079448

`A143166(n)+A139277(n)`
-/

namespace A102860.P8318674616010079448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n + A139277 n

end

end A102860.P8318674616010079448

namespace A102860

/-- `A143166(n)+A139277(n)` -/
def P8318674616010079448.Spec : Prop :=
  ∀ n, P8318674616010079448.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P13806356171478689382

`A259110(n)+A033587(n)`
-/

namespace A102860.P13806356171478689382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n + A033587 n

end

end A102860.P13806356171478689382

namespace A102860

/-- `A259110(n)+A033587(n)` -/
def P13806356171478689382.Spec : Prop :=
  ∀ n, P13806356171478689382.a n = A102860 (n + 2)

end A102860

/-! ## A102860.P18407459455780894544

`A194715(n)+A172078(n)`
-/

namespace A102860.P18407459455780894544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n + A172078 n

end

end A102860.P18407459455780894544

namespace A102860

/-- `A194715(n)+A172078(n)` -/
def P18407459455780894544.Spec : Prop :=
  ∀ n, P18407459455780894544.a n = A102860 (n + 2)

end A102860

/-!
# A102861: Numbers which in base 5 have digit-sum 4.

The programs for A102861, there is no canonical definition to state claims against.
-/

/-! ## A102861.P11433220292334532671

`4*(A023747(n+1)+1)`
-/

namespace A102861.P11433220292334532671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A023747 (n + 1) + 1)

end

end A102861.P11433220292334532671

/-! ## A102861.P13396190192684234396

`A016825(A023747(n+1))+2`
-/

namespace A102861.P13396190192684234396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A023747 (n + 1)).toNat + 2

end

end A102861.P13396190192684234396

/-! ## A102861.P12361654514491284383

`record[4*(A319653(n)+1)]`
-/

namespace A102861.P12361654514491284383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A319653 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102861.P12361654514491284383

/-! ## A102861.P10525541804152231913

`A008574(A023747(n+1)+1)`
-/

namespace A102861.P10525541804152231913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A023747 (n + 1) + 1).toNat

end

end A102861.P10525541804152231913

/-! ## A102861.P10164440221343940818

`A008586(A023747(n+1)+1)`
-/

namespace A102861.P10164440221343940818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A023747 (n + 1) + 1).toNat

end

end A102861.P10164440221343940818

/-! ## A102861.P16799140214992369428

`A131098(A023747(n+1)+2)+1`
-/

namespace A102861.P16799140214992369428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (A023747 (n + 1) + 2).toNat + 1

end

end A102861.P16799140214992369428

/-! ## A102861.P16519399598564113964

`4*eq[1, A229655(4*n)]`
-/

namespace A102861.P16519399598564113964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229655 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102861.P16519399598564113964

/-! ## A102861.P4850376853529340869

`eq[4, A053824(n)]`
-/

namespace A102861.P4850376853529340869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102861.P4850376853529340869

/-! ## A102861.P13419612746239738408

`eq[n+4, A230865(n)]`
-/

namespace A102861.P13419612746239738408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102861.P13419612746239738408

/-! ## A102861.P8337736976330577986

`4*eq[4, A053840(4*n)]`
-/

namespace A102861.P8337736976330577986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102861.P8337736976330577986

/-! ## A102861.P12045678620931380327

`eq[5, A173525(n+1)]`
-/

namespace A102861.P12045678620931380327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A102861.P12045678620931380327

/-! ## A102861.P17861996571346681369

`eq[A053840(n), A091722(n)]`
-/

namespace A102861.P17861996571346681369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102861.P17861996571346681369

/-!
# A102862: Numbers of prime factors of the sum of the first n primes.

The programs for A102862, the canonical program `A102862.P383056263894990787` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102862 has offset 1).

The definition of A102862 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A102862.P383056263894990787

`A001222(A007504(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A102862

/-- `A001222(A007504(n+1))` -/
def P383056263894990787.Spec : Prop :=
  ∀ n, P383056263894990787.a n = A102862 (n + 1)

theorem P383056263894990787.correct : P383056263894990787.Spec := by
  intro n
  simp only [A102862, Nat.add_sub_cancel]

end A102862

/-! ## A102862.P7088394582875017773

`∑{e}[∑[eq[1, ∑{e}[n, #]]], #]`
-/

namespace A102862.P7088394582875017773
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102862.P7088394582875017773

namespace A102862

/-- `∑{e}[∑[eq[1, ∑{e}[n, #]]], #]` -/
def P7088394582875017773.Spec : Prop :=
  ∀ n, (P7088394582875017773.a n : ℤ) = A102862 (n + 1)

end A102862

/-! ## A102862.P9148476762244788163

`∑{e}[∑[p?[xor(1, n)+1]], #]`
-/

namespace A102862.P9148476762244788163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A102862.P9148476762244788163

namespace A102862

/-- `∑{e}[∑[p?[xor(1, n)+1]], #]` -/
def P9148476762244788163.Spec : Prop :=
  ∀ n, (P9148476762244788163.a n : ℤ) = A102862 (n + 1)

end A102862

/-! ## A102862.P10645057918722706004

`∑{e}[∑[p?[n-(-1)^n]], #]`
-/

namespace A102862.P10645057918722706004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102862.P10645057918722706004

namespace A102862

/-- `∑{e}[∑[p?[n-(-1)^n]], #]` -/
def P10645057918722706004.Spec : Prop :=
  ∀ n, (P10645057918722706004.a n : ℤ) = A102862 (n + 1)

end A102862

/-! ## A102862.P10913680553273749208

`∑{e}[∑[A000040(n+1)], #]`
-/

namespace A102862.P10913680553273749208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102862.P10913680553273749208

namespace A102862

/-- `∑{e}[∑[A000040(n+1)], #]` -/
def P10913680553273749208.Spec : Prop :=
  ∀ n, (P10913680553273749208.a n : ℤ) = A102862 (n + 1)

end A102862

/-! ## A102862.P5546941117388739104

`∑{e}[∑[A008578(n+2)], #]`
-/

namespace A102862.P5546941117388739104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102862.P5546941117388739104

namespace A102862

/-- `∑{e}[∑[A008578(n+2)], #]` -/
def P5546941117388739104.Spec : Prop :=
  ∀ n, (P5546941117388739104.a n : ℤ) = A102862 (n + 1)

end A102862

/-! ## A102862.P3510183207882692967

`∑{e}[∑[A073846(2*(n+1))], #]`
-/

namespace A102862.P3510183207882692967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102862.P3510183207882692967

namespace A102862

/-- `∑{e}[∑[A073846(2*(n+1))], #]` -/
def P3510183207882692967.Spec : Prop :=
  ∀ n, (P3510183207882692967.a n : ℤ) = A102862 (n + 1)

end A102862

/-! ## A102862.P14159741761796699014

`∑{e}[∑[A001747(n+2)], #]-1`
-/

namespace A102862.P14159741761796699014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A102862.P14159741761796699014

namespace A102862

/-- `∑{e}[∑[A001747(n+2)], #]-1` -/
def P14159741761796699014.Spec : Prop :=
  ∀ n, P14159741761796699014.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P4091339435023198322

`A001222(∑[p?[xor(1, n)]])`
-/

namespace A102862.P4091339435023198322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102862.P4091339435023198322

namespace A102862

/-- `A001222(∑[p?[xor(1, n)]])` -/
def P4091339435023198322.Spec : Prop :=
  ∀ n, P4091339435023198322.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P10507804043904434464

`A001222(∑[p?[comp[n²]]])`
-/

namespace A102862.P10507804043904434464
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102862.P10507804043904434464

namespace A102862

/-- `A001222(∑[p?[comp[n²]]])` -/
def P10507804043904434464.Spec : Prop :=
  ∀ n, P10507804043904434464.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P16823742975985980691

`A001222(∑[record[∑{p}[n+2, #]]])`
-/

namespace A102862.P16823742975985980691
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102862.P16823742975985980691

namespace A102862

/-- `A001222(∑[record[∑{p}[n+2, #]]])` -/
def P16823742975985980691.Spec : Prop :=
  ∀ n, P16823742975985980691.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P5868786684957511579

`A001222(∑[A000040(n+1)])`
-/

namespace A102862.P5868786684957511579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102862.P5868786684957511579

namespace A102862

/-- `A001222(∑[A000040(n+1)])` -/
def P5868786684957511579.Spec : Prop :=
  ∀ n, P5868786684957511579.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P3203333724137826802

`A001222(∑[A008578(n+2)])`
-/

namespace A102862.P3203333724137826802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102862.P3203333724137826802

namespace A102862

/-- `A001222(∑[A008578(n+2)])` -/
def P3203333724137826802.Spec : Prop :=
  ∀ n, P3203333724137826802.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P9070903098183721804

`A001222(∑[A182986(n+2)])`
-/

namespace A102862.P9070903098183721804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102862.P9070903098183721804

namespace A102862

/-- `A001222(∑[A182986(n+2)])` -/
def P9070903098183721804.Spec : Prop :=
  ∀ n, P9070903098183721804.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P12086438933372542743

`A001222(∑[A158611(n+3)])`
-/

namespace A102862.P12086438933372542743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102862.P12086438933372542743

namespace A102862

/-- `A001222(∑[A158611(n+3)])` -/
def P12086438933372542743.Spec : Prop :=
  ∀ n, P12086438933372542743.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P11228559337723081203

`A001222(record[A160793(n+2)])`
-/

namespace A102862.P11228559337723081203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A102862.P11228559337723081203

namespace A102862

/-- `A001222(record[A160793(n+2)])` -/
def P11228559337723081203.Spec : Prop :=
  ∀ n, P11228559337723081203.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P1735402437027364497

`A001222(A237589(n+1)+1)`
-/

namespace A102862.P1735402437027364497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A237589 (n + 1) + 1).toNat

end

end A102862.P1735402437027364497

namespace A102862

/-- `A001222(A237589(n+1)+1)` -/
def P1735402437027364497.Spec : Prop :=
  ∀ n, P1735402437027364497.a n = A102862 (n + 1)

theorem P1735402437027364497.correct : P1735402437027364497.Spec := by
  intro n
  simp only [A102862, Nat.add_sub_cancel, A102862.P1735402437027364497.a, A102862.P383056263894990787.a, A001222, A001222.P11318177267732088261.a, A007504, A007504.P14310834286015847203.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102862

/-! ## A102862.P1314150072225892520

`A001222(A014284(n+2)-1)`
-/

namespace A102862.P1314150072225892520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014284 (n + 2) - 1).toNat

end

end A102862.P1314150072225892520

namespace A102862

/-- `A001222(A014284(n+2)-1)` -/
def P1314150072225892520.Spec : Prop :=
  ∀ n, P1314150072225892520.a n = A102862 (n + 1)

theorem P1314150072225892520.correct : P1314150072225892520.Spec := by
  intro n
  simp only [A102862, Nat.add_sub_cancel, A102862.P1314150072225892520.a, A102862.P383056263894990787.a, A001222, A001222.P11318177267732088261.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A102862

/-! ## A102862.P3600713728851397937

`A001222(A036439(n+2)-2)`
-/

namespace A102862.P3600713728851397937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036439 (n + 2) - 2).toNat

end

end A102862.P3600713728851397937

namespace A102862

/-- `A001222(A036439(n+2)-2)` -/
def P3600713728851397937.Spec : Prop :=
  ∀ n, P3600713728851397937.a n = A102862 (n + 1)

end A102862

/-! ## A102862.P7946201823552435183

`A001222(A362419(n+1)/2)`
-/

namespace A102862.P7946201823552435183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A362419 (n + 1) : ℚ) / 2)).toNat

end

end A102862.P7946201823552435183

namespace A102862

/-- `A001222(A362419(n+1)/2)` -/
def P7946201823552435183.Spec : Prop :=
  ∀ n, P7946201823552435183.a n = A102862 (n + 1)

end A102862

/-!
# A102863: a(n)=1 if at least one of the first n primes is a divisor of the sum of the first n primes; otherwise a(n)=0.

The programs for A102863, the canonical program `A102863.P11458162008794449909` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102863 has offset 1).

The definition of A102863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102863.P11458162008794449909

`ceil(A105783(n+1)/7)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A102863

/-- `ceil(A105783(n+1)/7)` -/
def P11458162008794449909.Spec : Prop :=
  ∀ n, P11458162008794449909.a n = A102863 (n + 1)

theorem P11458162008794449909.correct : P11458162008794449909.Spec := by
  intro n
  simp only [A102863, Nat.add_sub_cancel]

end A102863

/-! ## A102863.P8985077227064565750

`floor(acot(acot(A132995(n+1))))`
-/

namespace A102863.P8985077227064565750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (A132995 (n + 1) : ℝ))⌋

end

end A102863.P8985077227064565750

namespace A102863

/-- `floor(acot(acot(A132995(n+1))))` -/
def P8985077227064565750.Spec : Prop :=
  ∀ n, P8985077227064565750.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P8914015932993213492

`A126970(floor(1/A132995(n+1)))`
-/

namespace A102863.P8914015932993213492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126970 ⌊1 / (A132995 (n + 1) : ℚ)⌋.toNat

end

end A102863.P8914015932993213492

namespace A102863

/-- `A126970(floor(1/A132995(n+1)))` -/
def P8914015932993213492.Spec : Prop :=
  ∀ n, P8914015932993213492.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P9429481099709863925

`A265122(floor(1/A132995(n+1)))`
-/

namespace A102863.P9429481099709863925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265122 ⌊1 / (A132995 (n + 1) : ℚ)⌋.toNat

end

end A102863.P9429481099709863925

namespace A102863

/-- `A265122(floor(1/A132995(n+1)))` -/
def P9429481099709863925.Spec : Prop :=
  ∀ n, P9429481099709863925.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P14148750411214971293

`A049084(A000035(n)*A007610(n+1)+2)`
-/

namespace A102863.P14148750411214971293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A000035 n * A007610 (n + 1) + 2).toNat

end

end A102863.P14148750411214971293

namespace A102863

/-- `A049084(A000035(n)*A007610(n+1)+2)` -/
def P14148750411214971293.Spec : Prop :=
  ∀ n, P14148750411214971293.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P18106343091997689666

`1-A230980(A000035(n)*A007610(n+1))`
-/

namespace A102863.P18106343091997689666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A230980 (A000035 n * A007610 (n + 1)).toNat

end

end A102863.P18106343091997689666

namespace A102863

/-- `1-A230980(A000035(n)*A007610(n+1))` -/
def P18106343091997689666.Spec : Prop :=
  ∀ n, P18106343091997689666.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P14104349846197900991

`A001221(A000005(A132995(n+1)))`
-/

namespace A102863.P14104349846197900991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (A132995 (n + 1)).toNat).toNat

end

end A102863.P14104349846197900991

namespace A102863

/-- `A001221(A000005(A132995(n+1)))` -/
def P14104349846197900991.Spec : Prop :=
  ∀ n, P14104349846197900991.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P14648677887085926698

`A000007(n*A010051(A007504(n+1)))`
-/

namespace A102863.P14648677887085926698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A010051 (A007504 (n + 1)).toNat).toNat

end

end A102863.P14648677887085926698

namespace A102863

/-- `A000007(n*A010051(A007504(n+1)))` -/
def P14648677887085926698.Spec : Prop :=
  ∀ n, P14648677887085926698.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P5655596260681403628

`A025097(a(n-1)+1)%A001222(∑[A000040(n+1)])` with `a(0)=1`
-/

namespace A102863.P5655596260681403628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A025097 (a (n - 1) + 1).toNat) (A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A102863.P5655596260681403628

namespace A102863

/-- `A025097(a(n-1)+1)%A001222(∑[A000040(n+1)])` -/
def P5655596260681403628.Spec : Prop :=
  ∀ n, P5655596260681403628.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P8076216267698334739

`A001221(A000005(A007504(n+1)/A121755(n+1)))`
-/

namespace A102863.P8076216267698334739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (SequenceMachineLib.roundAway ((A007504 (n + 1) : ℚ) / (A121755 (n + 1) : ℚ))).toNat).toNat

end

end A102863.P8076216267698334739

namespace A102863

/-- `A001221(A000005(A007504(n+1)/A121755(n+1)))` -/
def P8076216267698334739.Spec : Prop :=
  ∀ n, P8076216267698334739.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P12880824859254562135

`A049240(A132995(n+1))`
-/

namespace A102863.P12880824859254562135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A132995 (n + 1)).toNat

end

end A102863.P12880824859254562135

namespace A102863

/-- `A049240(A132995(n+1))` -/
def P12880824859254562135.Spec : Prop :=
  ∀ n, P12880824859254562135.a n = A102863 (n + 1)

end A102863

/-! ## A102863.P7127721373039258220

`A354108(A362419(n+1))`
-/

namespace A102863.P7127721373039258220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354108 (A362419 (n + 1)).toNat

end

end A102863.P7127721373039258220

namespace A102863

/-- `A354108(A362419(n+1))` -/
def P7127721373039258220.Spec : Prop :=
  ∀ n, P7127721373039258220.a n = A102863 (n + 1)

end A102863

/-!
# A102864: Leading column of A102416.

The programs for A102864, there is no canonical definition to state claims against.
-/

/-! ## A102864.P3782062244581004333

`A102416(∑[ceil(n/2)])`
-/

namespace A102864.P3782062244581004333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A102864.P3782062244581004333

/-! ## A102864.P6484361843494639728

`lcm(2, A102416(A002620(n+1)))`
-/

namespace A102864.P6484361843494639728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A102416 (A002620 (n + 1)).toNat)

end

end A102864.P6484361843494639728

/-! ## A102864.P1939582185277924206

`and(-2, A102416(A076921(n+1)))`
-/

namespace A102864.P1939582185277924206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A102416 (A076921 (n + 1)).toNat)

end

end A102864.P1939582185277924206

/-! ## A102864.P1076368149539973144

`A102416(A076921(n+1))+A025466(n)`
-/

namespace A102864.P1076368149539973144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102416 (A076921 (n + 1)).toNat + A025466 n

end

end A102864.P1076368149539973144

/-! ## A102864.P10962848296631694241

`A178780(n)+A102416(A076921(n+1))`
-/

namespace A102864.P10962848296631694241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A102416 (A076921 (n + 1)).toNat

end

end A102864.P10962848296631694241

/-!
# A102865: Base-4 digits are, in order, the first n terms of the sequence (1, 3, 21, 203, 2021, 20203, 202021, 2020203, 20202021, 202020203, ... ).

The programs for A102865, the canonical program `A102865.P13111443815762928868` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102865 has offset 0).

The definition of A102865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102865.P13111443815762928868

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102865

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P13111443815762928868.Spec : Prop :=
  ∀ n, P13111443815762928868.a n = A102865 n

theorem P13111443815762928868.correct : P13111443815762928868.Spec := by
  intro n
  simp only [A102865]

end A102865

/-! ## A102865.P12201688340343797291

`floor(8*4^n/15)+1`
-/

namespace A102865.P12201688340343797291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * 4 ^ n : ℚ) / 15⌋ + 1

end

end A102865.P12201688340343797291

namespace A102865

/-- `floor(8*4^n/15)+1` -/
def P12201688340343797291.Spec : Prop :=
  ∀ n, P12201688340343797291.a n = A102865 n

end A102865

/-! ## A102865.P15379060291294779819

`∑[ogf((-1+x+4x^2)/(-1+3x+4x^2))]`
-/

namespace A102865.P15379060291294779819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, -3, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102865.P15379060291294779819

namespace A102865

/-- `∑[ogf((-1+x+4x^2)/(-1+3x+4x^2))]` -/
def P15379060291294779819.Spec : Prop :=
  ∀ n, P15379060291294779819.a n = A102865 n

end A102865

/-! ## A102865.P1741871600908155733

`ogf((-1+x+4x^2)/(-1+4x+x^2-4x^3))`
-/

namespace A102865.P1741871600908155733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4] [1, -4, -1, 4] n

end

end A102865.P1741871600908155733

namespace A102865

/-- `ogf((-1+x+4x^2)/(-1+4x+x^2-4x^3))` -/
def P1741871600908155733.Spec : Prop :=
  ∀ n, P1741871600908155733.a n = A102865 n

end A102865

/-! ## A102865.P16202645819139579751

`or(1, floor(8*4^n/15))`
-/

namespace A102865.P16202645819139579751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊8 * ((4 ^ n : ℚ) / 15)⌋

end

end A102865.P16202645819139579751

namespace A102865

/-- `or(1, floor(8*4^n/15))` -/
def P16202645819139579751.Spec : Prop :=
  ∀ n, P16202645819139579751.a n = A102865 n

end A102865

/-! ## A102865.P5876843234709635491

`xor(1, floor(8*4^n/15))`
-/

namespace A102865.P5876843234709635491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊8 * ((4 ^ n : ℚ) / 15)⌋

end

end A102865.P5876843234709635491

namespace A102865

/-- `xor(1, floor(8*4^n/15))` -/
def P5876843234709635491.Spec : Prop :=
  ∀ n, P5876843234709635491.a n = A102865 n

end A102865

/-! ## A102865.P5984018009166842304

`∑[4^n/2-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A102865.P5984018009166842304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (4 ^ n : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102865.P5984018009166842304

namespace A102865

/-- `∑[4^n/2-a(n-1)]` -/
def P5984018009166842304.Spec : Prop :=
  ∀ n, P5984018009166842304.a n = (A102865 n : ℚ)

end A102865

/-! ## A102865.P13205103373797175715

`A365103(n+2)/2`
-/

namespace A102865.P13205103373797175715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365103 (n + 2) : ℚ) / 2

end

end A102865.P13205103373797175715

namespace A102865

/-- `A365103(n+2)/2` -/
def P13205103373797175715.Spec : Prop :=
  ∀ n, P13205103373797175715.a n = (A102865 n : ℚ)

end A102865

/-! ## A102865.P2242760748615727497

`and(A007583(n), A115164(n))`
-/

namespace A102865.P2242760748615727497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007583 n) (A115164 n)

end

end A102865.P2242760748615727497

namespace A102865

/-- `and(A007583(n), A115164(n))` -/
def P2242760748615727497.Spec : Prop :=
  ∀ n, P2242760748615727497.a n = A102865 n

end A102865

/-! ## A102865.P18236326670130889286

`and(A007583(n), A330795(n))`
-/

namespace A102865.P18236326670130889286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007583 n) (A330795 n)

end

end A102865.P18236326670130889286

namespace A102865

/-- `and(A007583(n), A330795(n))` -/
def P18236326670130889286.Spec : Prop :=
  ∀ n, P18236326670130889286.a n = A102865 n

end A102865

/-! ## A102865.P16178924653288135806

`floor(∑[4*a(n-1)]/5)` with `a(0)=7, a(1)=8`
-/

namespace A102865.P16178924653288135806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A102865.P16178924653288135806

namespace A102865

/-- `floor(∑[4*a(n-1)]/5)` -/
def P16178924653288135806.Spec : Prop :=
  ∀ n, P16178924653288135806.a n = A102865 n

end A102865

/-! ## A102865.P6196769462792908524

`record[∑[A118405(n)]]`
-/

namespace A102865.P6196769462792908524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118405 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102865.P6196769462792908524

namespace A102865

/-- `record[∑[A118405(n)]]` -/
def P6196769462792908524.Spec : Prop :=
  ∀ n, P6196769462792908524.a n = A102865 n

end A102865

/-! ## A102865.P17207820012260555672

`(A102900(n+1)+2)/3`
-/

namespace A102865.P17207820012260555672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102900 (n + 1) + 2 : ℚ) / 3

end

end A102865.P17207820012260555672

namespace A102865

/-- `(A102900(n+1)+2)/3` -/
def P17207820012260555672.Spec : Prop :=
  ∀ n, P17207820012260555672.a n = (A102865 n : ℚ)

end A102865

/-! ## A102865.P7247356164023698186

`and(A007583(n), A118171(n))`
-/

namespace A102865.P7247356164023698186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007583 n) (A118171 n)

end

end A102865.P7247356164023698186

namespace A102865

/-- `and(A007583(n), A118171(n))` -/
def P7247356164023698186.Spec : Prop :=
  ∀ n, P7247356164023698186.a n = A102865 n

end A102865

/-! ## A102865.P17714437871836199592

`and(A115164(n), A206373(n))`
-/

namespace A102865.P17714437871836199592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115164 n) (A206373 n)

end

end A102865.P17714437871836199592

namespace A102865

/-- `and(A115164(n), A206373(n))` -/
def P17714437871836199592.Spec : Prop :=
  ∀ n, P17714437871836199592.a n = A102865 n

end A102865

/-! ## A102865.P14261621138158085591

`and(A118171(n), A206373(n))`
-/

namespace A102865.P14261621138158085591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118171 n) (A206373 n)

end

end A102865.P14261621138158085591

namespace A102865

/-- `and(A118171(n), A206373(n))` -/
def P14261621138158085591.Spec : Prop :=
  ∀ n, P14261621138158085591.a n = A102865 n

end A102865

/-! ## A102865.P18216973171085438833

`and(A206373(n), A330795(n))`
-/

namespace A102865.P18216973171085438833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206373 n) (A330795 n)

end

end A102865.P18216973171085438833

namespace A102865

/-- `and(A206373(n), A330795(n))` -/
def P18216973171085438833.Spec : Prop :=
  ∀ n, P18216973171085438833.a n = A102865 n

end A102865

/-! ## A102865.P8273567994590372371

`and(A037576(n+1), A206373(n))`
-/

namespace A102865.P8273567994590372371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037576 (n + 1)) (A206373 n)

end

end A102865.P8273567994590372371

namespace A102865

/-- `and(A037576(n+1), A206373(n))` -/
def P8273567994590372371.Spec : Prop :=
  ∀ n, P8273567994590372371.a n = A102865 n

end A102865

/-!
# A102866: Number of finite languages over a binary alphabet (set of nonempty binary words of total length n).

The programs for A102866, there is no canonical definition to state claims against.
-/

/-! ## A102866.P8276982186517296077

`A292804(∑[n+3])`
-/

namespace A102866.P8276982186517296077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102866.P8276982186517296077

/-! ## A102866.P5118919585080939923

`record[A292804(A055998(A008611(n)))]`
-/

namespace A102866.P5118919585080939923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102866.P5118919585080939923

/-! ## A102866.P8529294098459788425

`record[A292804(A055998(A008616(n)))]`
-/

namespace A102866.P8529294098459788425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A055998 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102866.P8529294098459788425

/-! ## A102866.P3049585802557462888

`record[A292804(A027379(A103221(n)))]`
-/

namespace A102866.P3049585802557462888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102866.P3049585802557462888

/-! ## A102866.P12666945616546495870

`record[A292804(A027379(A032742(n+1)))]`
-/

namespace A102866.P12666945616546495870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102866.P12666945616546495870

/-! ## A102866.P9787318227141973885

`record[A292804(A027379(A061395(n+1)))]`
-/

namespace A102866.P9787318227141973885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 (A061395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102866.P9787318227141973885

/-! ## A102866.P5435746026077132254

`record[A292804(A027379(A077610(n+1)))]`
-/

namespace A102866.P5435746026077132254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (A027379 (A077610 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102866.P5435746026077132254

/-!
# A102867: Prime differences between k-th prime and k-th Fibonacci number.

The programs for A102867, there is no canonical definition to state claims against.
-/

/-! ## A102867.P9995010878177445049

`A100700(A099381(n+1))`
-/

namespace A102867.P9995010878177445049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100700 (A099381 (n + 1)).toNat

end

end A102867.P9995010878177445049

/-! ## A102867.P5965000694729262353

`A049448(A049464(n))-A049465(n+2)`
-/

namespace A102867.P5965000694729262353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049448 (A049464 n).toNat - A049465 (n + 2)

end

end A102867.P5965000694729262353

/-!
# A102870: Primes of the form 3^k + 8.

The programs for A102870, there is no canonical definition to state claims against.
-/

/-! ## A102870.P12180673397636973964

`3^A217136(n+1)+8`
-/

namespace A102870.P12180673397636973964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A217136 (n + 1) : ℤ) + 8

end

end A102870.P12180673397636973964

/-! ## A102870.P4410131691439860227

`A168607(A217136(n+1))+6`
-/

namespace A102870.P4410131691439860227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (A217136 (n + 1)).toNat + 6

end

end A102870.P4410131691439860227

/-! ## A102870.P3199001832941302676

`∩[A226821(n+1), A234346(n+1)]`
-/

namespace A102870.P3199001832941302676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A102870.P3199001832941302676

/-!
# A102871: a(n) = a(n-3) - 5*a(n-2) + 5*a(n-1), a(0) = 1, a(1) = 3, a(2) = 10.

The programs for A102871, the canonical program `A102871.P8703874535526848163` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102871 has offset 0).

The definition of A102871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)-5*a(n-2)+5*a(n-1)` (program `A102871.P8703874535526848163`, by `A102871.P8703874535526848163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102871.P9363489754342303909

`4*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=3`
-/

namespace A102871.P9363489754342303909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * a (n - 1) - a (n - 2) - 1

end

end A102871.P9363489754342303909

namespace A102871

/-- `4*a(n-1)-a(n-2)-1` -/
def P9363489754342303909.Spec : Prop :=
  ∀ n, P9363489754342303909.a n = A102871 n

end A102871

/-! ## A102871.P5248975433775264155

`A001571(n)+1`
-/

namespace A102871.P5248975433775264155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n + 1

end

end A102871.P5248975433775264155

namespace A102871

/-- `A001571(n)+1` -/
def P5248975433775264155.Spec : Prop :=
  ∀ n, P5248975433775264155.a n = A102871 n

end A102871

/-! ## A102871.P8703874535526848163

`a(n-3)-5*a(n-2)+5*a(n-1)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102871

/-- `a(n-3)-5*a(n-2)+5*a(n-1)` -/
def P8703874535526848163.Spec : Prop :=
  ∀ n, P8703874535526848163.a n = A102871 n

theorem P8703874535526848163.correct : P8703874535526848163.Spec := by
  intro n
  simp only [A102871]

end A102871

/-! ## A102871.P11053865971856471749

`∑[ogf((1-2x)/(1-4x+x^2))]`
-/

namespace A102871.P11053865971856471749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P11053865971856471749

namespace A102871

/-- `∑[ogf((1-2x)/(1-4x+x^2))]` -/
def P11053865971856471749.Spec : Prop :=
  ∀ n, P11053865971856471749.a n = A102871 n

end A102871

/-! ## A102871.P5693343801160434845

`ogf((1-2x)/(1-5x+5x^2-x^3))`
-/

namespace A102871.P5693343801160434845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 5, -1] n

end

end A102871.P5693343801160434845

namespace A102871

/-- `ogf((1-2x)/(1-5x+5x^2-x^3))` -/
def P5693343801160434845.Spec : Prop :=
  ∀ n, P5693343801160434845.a n = A102871 n

end A102871

/-! ## A102871.P5521991751154275038

`round((sqrt(3)+2)*a(n-1))-1` with `a(0)=1`
-/

namespace A102871.P5521991751154275038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)) - 1

end

end A102871.P5521991751154275038

namespace A102871

/-- `round((sqrt(3)+2)*a(n-1))-1` -/
def P5521991751154275038.Spec : Prop :=
  ∀ n, P5521991751154275038.a n = A102871 n

end A102871

/-! ## A102871.P4680858430207288233

`∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A102871.P4680858430207288233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P4680858430207288233

namespace A102871

/-- `∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P4680858430207288233.Spec : Prop :=
  ∀ n, P4680858430207288233.a n = A102871 n

end A102871

/-! ## A102871.P13779416146453610348

`floor((sqrt(3)+2)*a(n-1))-1` with `a(0)=1, a(1)=3`
-/

namespace A102871.P13779416146453610348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 1

end

end A102871.P13779416146453610348

namespace A102871

/-- `floor((sqrt(3)+2)*a(n-1))-1` -/
def P13779416146453610348.Spec : Prop :=
  ∀ n, P13779416146453610348.a n = A102871 n

end A102871

/-! ## A102871.P18138451229798106535

`ceil((sqrt(3)+2)*a(n-1))-2` with `a(0)=1, a(1)=3`
-/

namespace A102871.P18138451229798106535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 2

end

end A102871.P18138451229798106535

namespace A102871

/-- `ceil((sqrt(3)+2)*a(n-1))-2` -/
def P18138451229798106535.Spec : Prop :=
  ∀ n, P18138451229798106535.a n = A102871 n

end A102871

/-! ## A102871.P16989714957353766896

`∑[4*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A102871.P16989714957353766896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P16989714957353766896

namespace A102871

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P16989714957353766896.Spec : Prop :=
  ∀ n, P16989714957353766896.a n = A102871 n

end A102871

/-! ## A102871.P5989921623390009914

`∑[-round(a(n-1)/(sqrt(3)-2))]` with `a(0)=1, a(1)=2`
-/

namespace A102871.P5989921623390009914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P5989921623390009914

namespace A102871

/-- `∑[-round(a(n-1)/(sqrt(3)-2))]` -/
def P5989921623390009914.Spec : Prop :=
  ∀ n, P5989921623390009914.a n = A102871 n

end A102871

/-! ## A102871.P6786304312202988702

`∑[a(n-1)/(1/2)²-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A102871.P6786304312202988702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P6786304312202988702

namespace A102871

/-- `∑[a(n-1)/(1/2)²-a(n-2)]` -/
def P6786304312202988702.Spec : Prop :=
  ∀ n, P6786304312202988702.a n = (A102871 n : ℚ)

end A102871

/-! ## A102871.P10445022753059634231

`∑[A001075(n)]`
-/

namespace A102871.P10445022753059634231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P10445022753059634231

namespace A102871

/-- `∑[A001075(n)]` -/
def P10445022753059634231.Spec : Prop :=
  ∀ n, P10445022753059634231.a n = A102871 n

end A102871

/-! ## A102871.P17274624874708912114

`A082840(n)+2`
-/

namespace A102871.P17274624874708912114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + 2

end

end A102871.P17274624874708912114

namespace A102871

/-- `A082840(n)+2` -/
def P17274624874708912114.Spec : Prop :=
  ∀ n, P17274624874708912114.a n = A102871 n

end A102871

/-! ## A102871.P11617422286988966924

`∑[A092184(n)+1]`
-/

namespace A102871.P11617422286988966924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P11617422286988966924

namespace A102871

/-- `∑[A092184(n)+1]` -/
def P11617422286988966924.Spec : Prop :=
  ∀ n, P11617422286988966924.a n = A102871 n

end A102871

/-! ## A102871.P14244640034554690709

`∑[A121401(n)-1]`
-/

namespace A102871.P14244640034554690709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P14244640034554690709

namespace A102871

/-- `∑[A121401(n)-1]` -/
def P14244640034554690709.Spec : Prop :=
  ∀ n, P14244640034554690709.a n = A102871 n

end A102871

/-! ## A102871.P13505248063373286443

`∑[A002531(2*n)]`
-/

namespace A102871.P13505248063373286443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P13505248063373286443

namespace A102871

/-- `∑[A002531(2*n)]` -/
def P13505248063373286443.Spec : Prop :=
  ∀ n, P13505248063373286443.a n = A102871 n

end A102871

/-! ## A102871.P1905322749067996902

`A107401(2*(n+1))`
-/

namespace A102871.P1905322749067996902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * (n + 1))

end

end A102871.P1905322749067996902

namespace A102871

/-- `A107401(2*(n+1))` -/
def P1905322749067996902.Spec : Prop :=
  ∀ n, P1905322749067996902.a n = A102871 n

end A102871

/-! ## A102871.P11516554465223952222

`∑[A005246(2*n+1)]`
-/

namespace A102871.P11516554465223952222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P11516554465223952222

namespace A102871

/-- `∑[A005246(2*n+1)]` -/
def P11516554465223952222.Spec : Prop :=
  ∀ n, P11516554465223952222.a n = A102871 n

end A102871

/-! ## A102871.P8722801246494503786

`∑[abs(A108413(2*n+1))]`
-/

namespace A102871.P8722801246494503786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102871.P8722801246494503786

namespace A102871

/-- `∑[abs(A108413(2*n+1))]` -/
def P8722801246494503786.Spec : Prop :=
  ∀ n, P8722801246494503786.a n = A102871 n

end A102871

/-!
# A102872: List of values of 2^ceiling(log_2(3^k)) - 3^k for k >= 1, sorted in increasing order.

The programs for A102872, there is no canonical definition to state claims against.
-/

/-! ## A102872.P14956366506612183141

`A080079(3^A054068(n+1))`
-/

namespace A102872.P14956366506612183141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A054068 (n + 1) : ℤ))).toNat

end

end A102872.P14956366506612183141

/-! ## A102872.P7567400646926015408

`A080079(3^A194870(n+1))`
-/

namespace A102872.P7567400646926015408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A194870 (n + 1) : ℤ))).toNat

end

end A102872.P7567400646926015408

/-!
# A102873: Prime differences between 2^n and 3^m when they are nearly equal for n and m to 200.

The programs for A102873, there is no canonical definition to state claims against.
-/

/-! ## A102873.P18168550781718306283

`p?[A102872(n+1)]`
-/

namespace A102873.P18168550781718306283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A102873.P18168550781718306283

/-!
# A102874: Primes of the form 3^k + 14.

The programs for A102874, there is no canonical definition to state claims against.
-/

/-! ## A102874.P15397712597973343773

`3^A219035(n+1)+14`
-/

namespace A102874.P15397712597973343773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219035 (n + 1) : ℤ) + 14

end

end A102874.P15397712597973343773

/-! ## A102874.P3355950879825464406

`A205646(A219035(n+1))-2`
-/

namespace A102874.P3355950879825464406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205646 (A219035 (n + 1)).toNat - 2

end

end A102874.P3355950879825464406

/-! ## A102874.P11485669349204827706

`A280193(2*n+1)+A280193(2*n+1)+A205646(A219035(n+1))`
-/

namespace A102874.P11485669349204827706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + (A280193 (2 * n + 1) + A205646 (A219035 (n + 1)).toNat)

end

end A102874.P11485669349204827706

/-!
# A102875: Let f(n) = n+2 if n == 1 mod 3, = n if n == 2 mod 3, = n-2 if n == 0 mod 3; then a(n) = Fibonacci(f(n)).

The programs for A102875, the canonical program `A102875.P10479456155437138433` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102875 has offset 0).

The definition of A102875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102875.P9274717597366977082

`A212804(A074066(n+1))`
-/

namespace A102875.P9274717597366977082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A074066 (n + 1)).toNat

end

end A102875.P9274717597366977082

namespace A102875

/-- `A212804(A074066(n+1))` -/
def P9274717597366977082.Spec : Prop :=
  ∀ n, P9274717597366977082.a n = A102875 n

end A102875

/-! ## A102875.P10479456155437138433

`A000045(A074066(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A102875

/-- `A000045(A074066(n+1)-1)` -/
def P10479456155437138433.Spec : Prop :=
  ∀ n, P10479456155437138433.a n = A102875 n

theorem P10479456155437138433.correct : P10479456155437138433.Spec := by
  intro n
  simp only [A102875]

end A102875

/-! ## A102875.P8741171505611207819

`A006355(A074066(n+1))/A020639(A103517(n))`
-/

namespace A102875.P8741171505611207819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006355 (A074066 (n + 1)).toNat : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A102875.P8741171505611207819

namespace A102875

/-- `A006355(A074066(n+1))/A020639(A103517(n))` -/
def P8741171505611207819.Spec : Prop :=
  ∀ n, P8741171505611207819.a n = (A102875 n : ℚ)

end A102875

/-! ## A102875.P12535216818058043097

`A212804(Δ[A080782(A133263(n))])`
-/

namespace A102875.P12535216818058043097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (f1 (n + 1) - f1 n).toNat

end

end A102875.P12535216818058043097

namespace A102875

/-- `A212804(Δ[A080782(A133263(n))])` -/
def P12535216818058043097.Spec : Prop :=
  ∀ n, P12535216818058043097.a n = A102875 n

end A102875

/-! ## A102875.P12673122150079446157

`A202451(A034856(n+3)-A049347(n))`
-/

namespace A102875.P12673122150079446157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (A034856 (n + 3) - A049347 n).toNat

end

end A102875.P12673122150079446157

namespace A102875

/-- `A202451(A034856(n+3)-A049347(n))` -/
def P12673122150079446157.Spec : Prop :=
  ∀ n, P12673122150079446157.a n = A102875 n

end A102875

/-!
# A102877: a(0) = 1, a(1) = 1; for n>0, a(2*n) = 3*a(2n-1), a(2*n+1) = 3*a(2*n) - 2*a(n-1).

The programs for A102877, there is no canonical definition to state claims against.
-/

/-! ## A102877.P16817878769451422642

`A039721(n+2)/2-A129770(n)`
-/

namespace A102877.P16817878769451422642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039721 (n + 2) : ℚ) / 2 - (A129770 n : ℚ)

end

end A102877.P16817878769451422642

/-! ## A102877.P786750200812698269

`A111017(2*n+3)%A111017(2*(n+1))`
-/

namespace A102877.P786750200812698269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111017 (2 * n + 3)) (A111017 (2 * (n + 1)))

end

end A102877.P786750200812698269

/-! ## A102877.P3359848519427465564

`A129772(n)-A129770(n)`
-/

namespace A102877.P3359848519427465564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129772 n - A129770 n

end

end A102877.P3359848519427465564

/-! ## A102877.P7485278785236520765

`A014682(A039721(n+2))-A129770(n)`
-/

namespace A102877.P7485278785236520765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A039721 (n + 2)).toNat - A129770 n

end

end A102877.P7485278785236520765

/-! ## A102877.P15432846896100305717

`A130497(A183122(n+1))`
-/

namespace A102877.P15432846896100305717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A183122 (n + 1)).toNat

end

end A102877.P15432846896100305717

/-!
# A102878: Increasing partial quotients in the continued fraction expansion of the prime constant (A051006).

The programs for A102878, there is no canonical definition to state claims against.
-/

/-! ## A102878.P10518603563872247342

`record[A051007(n)]`
-/

namespace A102878.P10518603563872247342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102878.P10518603563872247342

/-! ## A102878.P6100241458125127309

`A051007(A103313(n))`
-/

namespace A102878.P6100241458125127309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051007 (A103313 n).toNat

end

end A102878.P6100241458125127309

/-! ## A102878.P7281466579983920077

`A051007(A103518(n))`
-/

namespace A102878.P7281466579983920077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051007 (A103518 n).toNat

end

end A102878.P7281466579983920077

/-!
# A102879: A Chebyshev transform of the first kind of the central binomial numbers.

The programs for A102879, there is no canonical definition to state claims against.
-/

/-! ## A102879.P9760844522067652367

`A101500(n)+A101500(n)-A360293(n)`
-/

namespace A102879.P9760844522067652367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101500 n + (A101500 n - A360293 n)

end

end A102879.P9760844522067652367

/-! ## A102879.P5213920764439382475

`2*A101500(n)-A360293(n)`
-/

namespace A102879.P5213920764439382475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101500 n - A360293 n

end

end A102879.P5213920764439382475

/-! ## A102879.P2029394077286110386

`A004277(A101500(n))-A360293(n)`
-/

namespace A102879.P2029394077286110386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A101500 n).toNat - A360293 n

end

end A102879.P2029394077286110386

/-!
# A102881: Expansion of (1+x)/sqrt(1-4x^2-8x^3-4x^4).

The programs for A102881, there is no canonical definition to state claims against.
-/

/-! ## A102881.P7419090516209572537

`A199530(A028310(∑[n]))`
-/

namespace A102881.P7419090516209572537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A102881.P7419090516209572537

/-! ## A102881.P9467558650803636730

`A199530(A179865(n+1))`
-/

namespace A102881.P9467558650803636730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A179865 (n + 1)).toNat

end

end A102881.P9467558650803636730

/-! ## A102881.P728503549088828733

`A199530(A065033(n²+n))`
-/

namespace A102881.P728503549088828733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A065033 (n ^ 2 + n)).toNat

end

end A102881.P728503549088828733

/-! ## A102881.P17186370693518819525

`A199530(A000007(n)+∑[n])`
-/

namespace A102881.P17186370693518819525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A102881.P17186370693518819525

/-! ## A102881.P7066938244588769227

`A199530(A027379(n)-2*n)`
-/

namespace A102881.P7066938244588769227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199530 (A027379 n - (2 * n : ℤ)).toNat

end

end A102881.P7066938244588769227

/-!
# A102883: Terms which share a divisor greater than 1 with the value formed by adding them to the sum of their divisors less than or equal to their square roots.

The programs for A102883, there is no canonical definition to state claims against.
-/

/-! ## A102883.P11579998194087986343

`lt[A051282(A173824(n+1)), A074206(n)]`
-/

namespace A102883.P11579998194087986343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A173824 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A102883.P11579998194087986343

/-! ## A102883.P1299946156249171218

`eq[A195989(n+1), A195989(A196031(n+2))]`
-/

namespace A102883.P1299946156249171218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195989 (A196031 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102883.P1299946156249171218

/-! ## A102883.P12645185769704050139

`eq[A001222(A213970(n+1)), A181819(n+1)]`
-/

namespace A102883.P12645185769704050139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A213970 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A102883.P12645185769704050139

/-! ## A102883.P17220613703841538752

`A091011(lt[A184955(n+2), A002262(n+3)])`
-/

namespace A102883.P17220613703841538752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091011 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A102883.P17220613703841538752

/-!
# A102885: Index of n in the primes A000040 or nonprimes A141468.

The programs for A102885, the canonical program `A102885.P15050759352946611380` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102885 has offset 0).

The definition of A102885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A102885.P6245215381071429669

`A000720(p?[A137661(n+1)])`
-/

namespace A102885.P6245215381071429669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P6245215381071429669

namespace A102885

/-- `A000720(p?[A137661(n+1)])` -/
def P6245215381071429669.Spec : Prop :=
  ∀ n, P6245215381071429669.a n = A102885 n

end A102885

/-! ## A102885.P7691742224851541234

`A003963(p?[A137661(n+1)])`
-/

namespace A102885.P7691742224851541234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P7691742224851541234

namespace A102885

/-- `A003963(p?[A137661(n+1)])` -/
def P7691742224851541234.Spec : Prop :=
  ∀ n, P7691742224851541234.a n = A102885 n

end A102885

/-! ## A102885.P3657217030494281181

`A026233(p?[A137661(n+1)])`
-/

namespace A102885.P3657217030494281181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P3657217030494281181

namespace A102885

/-- `A026233(p?[A137661(n+1)])` -/
def P3657217030494281181.Spec : Prop :=
  ∀ n, P3657217030494281181.a n = A102885 n

end A102885

/-! ## A102885.P11087131629435042514

`A049084(p?[A137661(n+1)])`
-/

namespace A102885.P11087131629435042514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P11087131629435042514

namespace A102885

/-- `A049084(p?[A137661(n+1)])` -/
def P11087131629435042514.Spec : Prop :=
  ∀ n, P11087131629435042514.a n = A102885 n

end A102885

/-! ## A102885.P12292947532823185361

`A055396(p?[A137661(n+1)])`
-/

namespace A102885.P12292947532823185361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P12292947532823185361

namespace A102885

/-- `A055396(p?[A137661(n+1)])` -/
def P12292947532823185361.Spec : Prop :=
  ∀ n, P12292947532823185361.a n = A102885 n

end A102885

/-! ## A102885.P12099941582617718879

`A056239(p?[A137661(n+1)])`
-/

namespace A102885.P12099941582617718879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P12099941582617718879

namespace A102885

/-- `A056239(p?[A137661(n+1)])` -/
def P12099941582617718879.Spec : Prop :=
  ∀ n, P12099941582617718879.a n = A102885 n

end A102885

/-! ## A102885.P2197822011896117129

`A061395(p?[A137661(n+1)])`
-/

namespace A102885.P2197822011896117129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P2197822011896117129

namespace A102885

/-- `A061395(p?[A137661(n+1)])` -/
def P2197822011896117129.Spec : Prop :=
  ∀ n, P2197822011896117129.a n = A102885 n

end A102885

/-! ## A102885.P16866679459818011140

`A087712(p?[A137661(n+1)])`
-/

namespace A102885.P16866679459818011140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P16866679459818011140

namespace A102885

/-- `A087712(p?[A137661(n+1)])` -/
def P16866679459818011140.Spec : Prop :=
  ∀ n, P16866679459818011140.a n = A102885 n

end A102885

/-! ## A102885.P939397708913126799

`A139169(p?[A137661(n+1)])`
-/

namespace A102885.P939397708913126799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139169 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P939397708913126799

namespace A102885

/-- `A139169(p?[A137661(n+1)])` -/
def P939397708913126799.Spec : Prop :=
  ∀ n, P939397708913126799.a n = A102885 n

end A102885

/-! ## A102885.P2797415199786442683

`A243503(p?[A137661(n+1)])`
-/

namespace A102885.P2797415199786442683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243503 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P2797415199786442683

namespace A102885

/-- `A243503(p?[A137661(n+1)])` -/
def P2797415199786442683.Spec : Prop :=
  ∀ n, P2797415199786442683.a n = A102885 n

end A102885

/-! ## A102885.P4354231900815464840

`A290103(p?[A137661(n+1)])`
-/

namespace A102885.P4354231900815464840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P4354231900815464840

namespace A102885

/-- `A290103(p?[A137661(n+1)])` -/
def P4354231900815464840.Spec : Prop :=
  ∀ n, P4354231900815464840.a n = A102885 n

end A102885

/-! ## A102885.P7547028031585351017

`A297113(p?[A137661(n+1)])`
-/

namespace A102885.P7547028031585351017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A102885.P7547028031585351017

namespace A102885

/-- `A297113(p?[A137661(n+1)])` -/
def P7547028031585351017.Spec : Prop :=
  ∀ n, P7547028031585351017.a n = A102885 n

end A102885

/-! ## A102885.P15050759352946611380

`abs(A086936(n+1)-A055672(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A102885

/-- `abs(A086936(n+1)-A055672(n))` -/
def P15050759352946611380.Spec : Prop :=
  ∀ n, P15050759352946611380.a n = A102885 n

theorem P15050759352946611380.correct : P15050759352946611380.Spec := by
  intro n
  simp only [A102885]

end A102885

/-!
# A102889: Square of the minimal space diagonal of an integral cuboid having volume n.

The programs for A102889, there is no canonical definition to state claims against.
-/

/-! ## A102889.P12162500132921645324

`A227215(n+1)²-A075777(n+1)`
-/

namespace A102889.P12162500132921645324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227215 (n + 1) ^ 2 - A075777 (n + 1)

end

end A102889.P12162500132921645324

/-! ## A102889.P8770460393967410770

`A323728(A052126(n+1))+A006530(n+1)²`
-/

namespace A102889.P8770460393967410770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323728 (A052126 (n + 1)).toNat + A006530 (n + 1) ^ 2

end

end A102889.P8770460393967410770

/-! ## A102889.P16508003939905581678

`A323728(A052126(n+1))+A130064(A066048(n+1))`
-/

namespace A102889.P16508003939905581678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323728 (A052126 (n + 1)).toNat + A130064 (A066048 (n + 1)).toNat

end

end A102889.P16508003939905581678

/-! ## A102889.P14560226940993922146

`∑{e}[A080372(n+1), A005563(#)]`
-/

namespace A102889.P14560226940993922146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005563 (Nat.factorization (f1 n).natAbs p)

end

end A102889.P14560226940993922146

/-!
# A102890: A102889(n) is at least a(n).

The programs for A102890, the canonical program `A102890.P12818409649905430393` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102890 has offset 1).

The definition of A102890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A102890.P12818409649905430393

`ceil(3*(n+1)^(2/3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102890

/-- `ceil(3*(n+1)^(2/3))` -/
def P12818409649905430393.Spec : Prop :=
  ∀ n, P12818409649905430393.a n = A102890 (n + 1)

theorem P12818409649905430393.correct : P12818409649905430393.Spec := by
  intro n
  simp only [A102890, Nat.add_sub_cancel]

end A102890

/-! ## A102890.P9460985075074828830

`floor(3*(n+1)*root(acot(n+1), 3))+1`
-/

namespace A102890.P9460985075074828830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (n + 1) : ℝ) * SequenceMachineLib.acot (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋ + 1

end

end A102890.P9460985075074828830

namespace A102890

/-- `floor(3*(n+1)*root(acot(n+1), 3))+1` -/
def P9460985075074828830.Spec : Prop :=
  ∀ n, P9460985075074828830.a n = A102890 (n + 1)

end A102890

/-! ## A102890.P7657717017509256166

`ceil(A067086(A004771(n))/2)+1`
-/

namespace A102890.P7657717017509256166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067086 (A004771 n).toNat : ℚ) / 2⌉ + 1

end

end A102890.P7657717017509256166

namespace A102890

/-- `ceil(A067086(A004771(n))/2)+1` -/
def P7657717017509256166.Spec : Prop :=
  ∀ n, P7657717017509256166.a n = A102890 (n + 1)

end A102890

/-! ## A102890.P8776085297050361426

`A080513(A067086(A004771(n)))`
-/

namespace A102890.P8776085297050361426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A067086 (A004771 n).toNat).toNat

end

end A102890.P8776085297050361426

namespace A102890

/-- `A080513(A067086(A004771(n)))` -/
def P8776085297050361426.Spec : Prop :=
  ∀ n, P8776085297050361426.a n = A102890 (n + 1)

end A102890

/-! ## A102890.P9938914352651184671

`A194847(A081270(n))`
-/

namespace A102890.P9938914352651184671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 (A081270 n).toNat

end

end A102890.P9938914352651184671

namespace A102890

/-- `A194847(A081270(n))` -/
def P9938914352651184671.Spec : Prop :=
  ∀ n, P9938914352651184671.a n = A102890 (n + 1)

end A102890

/-!
# A102893: Number of noncrossing trees with n edges and having degree of the root at least 2.

The programs for A102893, there is no canonical definition to state claims against.
-/

/-! ## A102893.P14191390293973310506

`A001764(n)+A001764(n)-A391380(n)`
-/

namespace A102893.P14191390293973310506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n + (A001764 n - A391380 n)

end

end A102893.P14191390293973310506

/-! ## A102893.P1018658953927159900

`A167763((n+1)²+n²)`
-/

namespace A102893.P1018658953927159900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167763 ((n + 1) ^ 2 + n ^ 2)

end

end A102893.P1018658953927159900

/-! ## A102893.P14986771319661626561

`or(A000038(n+1), A167763(A001844(n)))`
-/

namespace A102893.P14986771319661626561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A167763 (A001844 n).toNat)

end

end A102893.P14986771319661626561

/-! ## A102893.P15780589518707048216

`xor(A000038(n+2), A167763(A001844(n)))`
-/

namespace A102893.P15780589518707048216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 2)) (A167763 (A001844 n).toNat)

end

end A102893.P15780589518707048216

/-! ## A102893.P16477642548996063822

`A102593(∑[n])`
-/

namespace A102893.P16477642548996063822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102893.P16477642548996063822

/-! ## A102893.P9963623254894897153

`A102892(∑[n])`
-/

namespace A102893.P9963623254894897153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A102893.P9963623254894897153

/-! ## A102893.P6010452522192224780

`gcd(n, n+1)*A102593(A000217(n))`
-/

namespace A102893.P6010452522192224780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A102593 (A000217 n).toNat

end

end A102893.P6010452522192224780

/-! ## A102893.P13154814518538504356

`A102892(A000217(n))%A007226(n)`
-/

namespace A102893.P13154814518538504356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102892 (A000217 n).toNat) (A007226 n)

end

end A102893.P13154814518538504356

/-! ## A102893.P6352673740862319952

`or(A000007(n), A102593(A000217(n)))`
-/

namespace A102893.P6352673740862319952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A102593 (A000217 n).toNat)

end

end A102893.P6352673740862319952

/-! ## A102893.P12236860920598294700

`A102892(A000217(n))+A000035(2*n)`
-/

namespace A102893.P12236860920598294700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102892 (A000217 n).toNat + A000035 (2 * n)

end

end A102893.P12236860920598294700

/-!
# A102894: Number of ACI algebras or semilattices on n generators, with no identity or annihilator.

The programs for A102894, there is no canonical definition to state claims against.
-/

/-! ## A102894.P7372063712779944829

`A326906(n)/2`
-/

namespace A102894.P7372063712779944829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326906 n : ℚ) / 2

end

end A102894.P7372063712779944829

/-! ## A102894.P9068776120915947081

`ceil(A102895(n)/2)`
-/

namespace A102894.P9068776120915947081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102895 n : ℚ) / 2⌉

end

end A102894.P9068776120915947081

/-! ## A102894.P2273023825348427656

`A102895(gcd(n, n!²))/2`
-/

namespace A102894.P2273023825348427656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102895 (Nat.gcd n (Nat.factorial n ^ 2)) : ℚ) / 2

end

end A102894.P2273023825348427656

/-! ## A102894.P15178004596531719343

`A102895(floor(acot(n)+n))/2`
-/

namespace A102894.P15178004596531719343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102895 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat : ℚ) / 2

end

end A102894.P15178004596531719343

/-!
# A102895: Number of ACI algebras or semilattices on n generators with no identity element.

The programs for A102895, there is no canonical definition to state claims against.
-/

/-! ## A102895.P9740726358590805363

`∏{e}[2^n, A326906(#)]`
-/

namespace A102895.P9740726358590805363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A326906 (Nat.factorization (f1 n) p)

end

end A102895.P9740726358590805363

/-! ## A102895.P7577627827059717143

`∑{digits}[11*n, A102894(#)]`
-/

namespace A102895.P7577627827059717143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A102894 x).sum

end

end A102895.P7577627827059717143

/-! ## A102895.P9450934283074859079

`A326906(n)-floor(acot(n))`
-/

namespace A102895.P9450934283074859079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326906 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A102895.P9450934283074859079

/-! ## A102895.P7388018153363637944

`∑[char[n^3]]*A102894(n)`
-/

namespace A102895.P7388018153363637944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A102894 n

end

end A102895.P7388018153363637944

/-!
# A102896: Number of ACI algebras (or semilattices) on n generators with no annihilator.

The programs for A102896, there is no canonical definition to state claims against.
-/

/-! ## A102896.P14531750436922932738

`A102897(n)/2`
-/

namespace A102896.P14531750436922932738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102897 n : ℚ) / 2

end

end A102896.P14531750436922932738

/-! ## A102896.P2940916823324319742

`A326903(n)+A102894(n)`
-/

namespace A102896.P2940916823324319742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326903 n + A102894 n

end

end A102896.P2940916823324319742

/-! ## A102896.P18157568215393642089

`(A326901(n)+A102895(n))/2`
-/

namespace A102896.P18157568215393642089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326901 n + A102895 n : ℚ) / 2

end

end A102896.P18157568215393642089

/-! ## A102896.P17813743999961996688

`A326903(n)+A326906(n)/2`
-/

namespace A102896.P17813743999961996688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326903 n : ℚ) + (A326906 n : ℚ) / 2

end

end A102896.P17813743999961996688

/-!
# A102897: Number of ACI algebras (or semilattices) on n generators.

The programs for A102897, there is no canonical definition to state claims against.
-/

/-! ## A102897.P7265275417130507803

`2*A102896(n)`
-/

namespace A102897.P7265275417130507803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102896 n

end

end A102897.P7265275417130507803

/-! ## A102897.P3012712807450496934

`A326901(n)+A102895(n)`
-/

namespace A102897.P3012712807450496934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326901 n + A102895 n

end

end A102897.P3012712807450496934

/-! ## A102897.P4815144364902390771

`∏{e}[A008776(n), A102896(#)]`
-/

namespace A102897.P4815144364902390771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A102896 (Nat.factorization (f1 n).natAbs p)

end

end A102897.P4815144364902390771

/-! ## A102897.P12313425048297918090

`2*(A326903(n)+A102894(n))`
-/

namespace A102897.P12313425048297918090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A326903 n + A102894 n)

end

end A102897.P12313425048297918090

/-!
# A102898: A Catalan-related transform of 3^n.

The programs for A102898, there is no canonical definition to state claims against.
-/

/-! ## A102898.P16058721626504814337

`∏{e}[A111286(n+1), A126931(#)]`
-/

namespace A102898.P16058721626504814337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A126931 (Nat.factorization (f1 n).natAbs p)

end

end A102898.P16058721626504814337

/-! ## A102898.P12882112020470771940

`A065033(6*floor(10*a(n-1)/9))` with `a(0)=1`
-/

namespace A102898.P12882112020470771940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065033 (6 * ⌊(10 * a (n - 1) : ℚ) / 9⌋).toNat

end

end A102898.P12882112020470771940

/-! ## A102898.P7678387950694464487

`A057353(2*A246019(n))`
-/

namespace A102898.P7678387950694464487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A246019 n).toNat

end

end A102898.P7678387950694464487

/-! ## A102898.P4295464317233173435

`A004525(3*A246019(n))`
-/

namespace A102898.P4295464317233173435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A246019 n).toNat

end

end A102898.P4295464317233173435

/-!
# A102899: a(n) = ceiling(n/3)^2 - floor(n/3)^2.

The programs for A102899, the canonical program `A102899.P6552802322552256844` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A102899 has offset 0).

The definition of A102899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/3)²-floor(n/3)²` (program `A102899.P6552802322552256844`, by `A102899.P6552802322552256844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A102899.P6552802322552256844

`ceil(n/3)²-floor(n/3)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A102899

/-- `ceil(n/3)²-floor(n/3)²` -/
def P6552802322552256844.Spec : Prop :=
  ∀ n, P6552802322552256844.a n = A102899 n

theorem P6552802322552256844.correct : P6552802322552256844.Spec := by
  intro n
  simp only [A102899]

end A102899

/-! ## A102899.P15923897638122214186

`A011655(n)*A004396(n)`
-/

namespace A102899.P15923897638122214186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A004396 n

end

end A102899.P15923897638122214186

namespace A102899

/-- `A011655(n)*A004396(n)` -/
def P15923897638122214186.Spec : Prop :=
  ∀ n, P15923897638122214186.a n = A102899 n

end A102899

/-! ## A102899.P9110119546600959344

`round((lcm(3, n)-n)/3)`
-/

namespace A102899.P9110119546600959344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 3)

end

end A102899.P9110119546600959344

namespace A102899

/-- `round((lcm(3, n)-n)/3)` -/
def P9110119546600959344.Spec : Prop :=
  ∀ n, P9110119546600959344.a n = A102899 n

end A102899

/-! ## A102899.P11454316567427215689

`round(n-n/(4-gcd(3, n)))`
-/

namespace A102899.P11454316567427215689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (n : ℚ) / (4 - (Nat.gcd 3 n : ℤ) : ℚ))

end

end A102899.P11454316567427215689

namespace A102899

/-- `round(n-n/(4-gcd(3, n)))` -/
def P11454316567427215689.Spec : Prop :=
  ∀ n, P11454316567427215689.a n = A102899 n

end A102899

/-! ## A102899.P16967131350907816331

`xor(1, a(n-3)+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A102899.P16967131350907816331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.xor 1 (a (n - 3) + 1)

end

end A102899.P16967131350907816331

namespace A102899

/-- `xor(1, a(n-3)+1)` -/
def P16967131350907816331.Spec : Prop :=
  ∀ n, (P16967131350907816331.a n : ℤ) = A102899 n

end A102899

/-! ## A102899.P1394753629159371298

`round(2*n²%3*n/3)`
-/

namespace A102899.P1394753629159371298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * (n ^ 2 % 3) : ℕ) : ℚ) * ((n : ℚ) / 3))

end

end A102899.P1394753629159371298

namespace A102899

/-- `round(2*n²%3*n/3)` -/
def P1394753629159371298.Spec : Prop :=
  ∀ n, P1394753629159371298.a n = A102899 n

end A102899

/-! ## A102899.P17164076070638868344

`(2*n+3)%(n+1-floor(n/3))`
-/

namespace A102899.P17164076070638868344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 3 : ℤ) ((n + 1 : ℤ) - ⌊(n : ℚ) / 3⌋)

end

end A102899.P17164076070638868344

namespace A102899

/-- `(2*n+3)%(n+1-floor(n/3))` -/
def P17164076070638868344.Spec : Prop :=
  ∀ n, P17164076070638868344.a n = A102899 n

end A102899

/-! ## A102899.P13935952083449846976

`A004442(a(n-3)+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A102899.P13935952083449846976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A004442 (a (n - 3) + 1).toNat

end

end A102899.P13935952083449846976

namespace A102899

/-- `A004442(a(n-3)+1)` -/
def P13935952083449846976.Spec : Prop :=
  ∀ n, P13935952083449846976.a n = A102899 n

end A102899

/-! ## A102899.P7817750471872835823

`A174239(a(n-3)+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A102899.P7817750471872835823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A174239 (a (n - 3) + 1).toNat

end

end A102899.P7817750471872835823

namespace A102899

/-- `A174239(a(n-3)+1)` -/
def P7817750471872835823.Spec : Prop :=
  ∀ n, P7817750471872835823.a n = A102899 n

end A102899

/-! ## A102899.P16370198348267613159

`A263426(a(n-3)+2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A102899.P16370198348267613159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A263426 (a (n - 3) + 2).toNat

end

end A102899.P16370198348267613159

namespace A102899

/-- `A263426(a(n-3)+2)` -/
def P16370198348267613159.Spec : Prop :=
  ∀ n, P16370198348267613159.a n = A102899 n

end A102899

/-! ## A102899.P9905777074769806108

`A325962(a(n-3)+3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A102899.P9905777074769806108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A325962 (a (n - 3) + 3).toNat

end

end A102899.P9905777074769806108

namespace A102899

/-- `A325962(a(n-3)+3)` -/
def P9905777074769806108.Spec : Prop :=
  ∀ n, P9905777074769806108.a n = A102899 n

end A102899

/-! ## A102899.P11737663366673579534

`A004273(A087508(n))`
-/

namespace A102899.P11737663366673579534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A087508 n).toNat

end

end A102899.P11737663366673579534

namespace A102899

/-- `A004273(A087508(n))` -/
def P11737663366673579534.Spec : Prop :=
  ∀ n, P11737663366673579534.a n = A102899 n

end A102899

/-! ## A102899.P13261636949460871832

`A004396(A091684(n))`
-/

namespace A102899.P13261636949460871832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A091684 n).toNat

end

end A102899.P13261636949460871832

namespace A102899

/-- `A004396(A091684(n))` -/
def P13261636949460871832.Spec : Prop :=
  ∀ n, P13261636949460871832.a n = A102899 n

end A102899

/-! ## A102899.P7779037431200099778

`A289207(A353327(n))`
-/

namespace A102899.P7779037431200099778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A353327 n).toNat

end

end A102899.P7779037431200099778

namespace A102899

/-- `A289207(A353327(n))` -/
def P7779037431200099778.Spec : Prop :=
  ∀ n, P7779037431200099778.a n = A102899 n

end A102899

/-! ## A102899.P1999724784658247219

`A004396(n*A267208(n))`
-/

namespace A102899.P1999724784658247219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * A267208 n).toNat

end

end A102899.P1999724784658247219

namespace A102899

/-- `A004396(n*A267208(n))` -/
def P1999724784658247219.Spec : Prop :=
  ∀ n, P1999724784658247219.a n = A102899 n

end A102899

/-! ## A102899.P14028304977127772618

`A004396(lcm(n, A092220(n)))`
-/

namespace A102899.P14028304977127772618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lcm (n : ℤ) (A092220 n))

end

end A102899.P14028304977127772618

namespace A102899

/-- `A004396(lcm(n, A092220(n)))` -/
def P14028304977127772618.Spec : Prop :=
  ∀ n, P14028304977127772618.a n = A102899 n

end A102899

/-! ## A102899.P9169777122246767325

`A004396(n*A092220(n)²)`
-/

namespace A102899.P9169777122246767325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * A092220 n ^ 2).toNat

end

end A102899.P9169777122246767325

namespace A102899

/-- `A004396(n*A092220(n)²)` -/
def P9169777122246767325.Spec : Prop :=
  ∀ n, P9169777122246767325.a n = A102899 n

end A102899

/-! ## A102899.P7192682940746863541

`A004396(n*A102283(n)²)`
-/

namespace A102899.P7192682940746863541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * A102283 n ^ 2).toNat

end

end A102899.P7192682940746863541

namespace A102899

/-- `A004396(n*A102283(n)²)` -/
def P7192682940746863541.Spec : Prop :=
  ∀ n, P7192682940746863541.a n = A102899 n

end A102899

/-! ## A102899.P11991048902865403976

`A004396(n*A128834(n)²)`
-/

namespace A102899.P11991048902865403976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * A128834 n ^ 2).toNat

end

end A102899.P11991048902865403976

namespace A102899

/-- `A004396(n*A128834(n)²)` -/
def P11991048902865403976.Spec : Prop :=
  ∀ n, P11991048902865403976.a n = A102899 n

end A102899

/-! ## A102899.P2944660647385566852

`A011655(n)*A130823(n+1)`
-/

namespace A102899.P2944660647385566852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A130823 (n + 1)

end

end A102899.P2944660647385566852

namespace A102899

/-- `A011655(n)*A130823(n+1)` -/
def P2944660647385566852.Spec : Prop :=
  ∀ n, P2944660647385566852.a n = A102899 n

end A102899

