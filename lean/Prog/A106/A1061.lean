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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
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
import SequenceMachineLib.Triangle

/-!
# A106100: Primes with maximal digit = 2.

The programs for A106100, there is no canonical definition to state claims against.
-/

/-! ## A106100.P17546734338017635420

`∩[A036953(n+1), A221697(n+1)]`
-/

namespace A106100.P17546734338017635420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P17546734338017635420

/-! ## A106100.P16632993167436357168

`∩[A221697(n+1), A386021(n+1)]`
-/

namespace A106100.P16632993167436357168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P16632993167436357168

/-! ## A106100.P8697752822136306220

`∩[A221697(n+1), A386017(n+1)]`
-/

namespace A106100.P8697752822136306220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P8697752822136306220

/-! ## A106100.P10197243370894250103

`∩[A221697(n+1), A386018(n+1)]`
-/

namespace A106100.P10197243370894250103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P10197243370894250103

/-! ## A106100.P16730620258140907781

`∩[A221697(n+1), A386019(n+1)]`
-/

namespace A106100.P16730620258140907781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P16730620258140907781

/-! ## A106100.P7611086512273939065

`∩[A107715(n+1), A221697(n+1)]`
-/

namespace A106100.P7611086512273939065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P7611086512273939065

/-! ## A106100.P16920094659850582972

`∩[A221697(n+1), A386020(n+1)]`
-/

namespace A106100.P16920094659850582972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P16920094659850582972

/-! ## A106100.P7094418951737532989

`∩[A221697(n+1), A386022(n+1)]`
-/

namespace A106100.P7094418951737532989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P7094418951737532989

/-! ## A106100.P18381800584776353963

`∩[A036953(n+1), A277964(n+1)]`
-/

namespace A106100.P18381800584776353963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P18381800584776353963

/-! ## A106100.P16855519661320383356

`∩[A107715(n+1), A277964(n+1)]`
-/

namespace A106100.P16855519661320383356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P16855519661320383356

/-! ## A106100.P12479638225603500886

`∩[A277964(n+1), A386017(n+1)]`
-/

namespace A106100.P12479638225603500886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P12479638225603500886

/-! ## A106100.P10381597458297857558

`∩[A277964(n+1), A386018(n+1)]`
-/

namespace A106100.P10381597458297857558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P10381597458297857558

/-! ## A106100.P4354825320924238294

`∩[A277964(n+1), A386019(n+1)]`
-/

namespace A106100.P4354825320924238294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P4354825320924238294

/-! ## A106100.P8808276145546177084

`∩[A277964(n+1), A386020(n+1)]`
-/

namespace A106100.P8808276145546177084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P8808276145546177084

/-! ## A106100.P16635196303973709887

`∩[A277964(n+1), A386021(n+1)]`
-/

namespace A106100.P16635196303973709887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P16635196303973709887

/-! ## A106100.P12608491483160913608

`∩[A277964(n+1), A386022(n+1)]`
-/

namespace A106100.P12608491483160913608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P12608491483160913608

/-! ## A106100.P17065243654321674075

`∩[A173580(n+1), A221697(n+1)]`
-/

namespace A106100.P17065243654321674075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P17065243654321674075

/-! ## A106100.P6160540235257363909

`∩[A173580(n+1), A277964(n+1)]`
-/

namespace A106100.P6160540235257363909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P6160540235257363909

/-! ## A106100.P16048375520353780243

`∩[A066593(n+1), A221697(n+1)]`
-/

namespace A106100.P16048375520353780243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P16048375520353780243

/-! ## A106100.P8257820278778941039

`∩[A066593(n+1), A277964(n+1)]`
-/

namespace A106100.P8257820278778941039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106100.P8257820278778941039

/-!
# A106101: Primes with minimal digit = 1.

The programs for A106101, there is no canonical definition to state claims against.
-/

/-! ## A106101.P1686329838277365667

`∩[A038618(n+1), A092911(n+1)]`
-/

namespace A106101.P1686329838277365667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P1686329838277365667

/-! ## A106101.P10292574205909921632

`∩[A038618(n+1), A208270(n+1)]`
-/

namespace A106101.P10292574205909921632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P10292574205909921632

/-! ## A106101.P10071621802653670101

`∩[A038618(n+1), A239058(n+1)]`
-/

namespace A106101.P10071621802653670101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P10071621802653670101

/-! ## A106101.P7883284914799649864

`∩[A195943(n+1), A208270(n+1)]`
-/

namespace A106101.P7883284914799649864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P7883284914799649864

/-! ## A106101.P10096390679820232078

`∩[A038618(n+1), A092912(n+1)]`
-/

namespace A106101.P10096390679820232078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P10096390679820232078

/-! ## A106101.P8819752759380448060

`∩[A038618(n+1), A062634(n+1)]`
-/

namespace A106101.P8819752759380448060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P8819752759380448060

/-! ## A106101.P6516771013492975193

`A045344(eq[1, A060420(n+1)])`
-/

namespace A106101.P6516771013492975193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106101.P6516771013492975193

/-! ## A106101.P989312664583939055

`A065091(eq[1, A060420(n+1)])`
-/

namespace A106101.P989312664583939055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106101.P989312664583939055

/-! ## A106101.P10815964879317649734

`p?[A084374(n+1)]`
-/

namespace A106101.P10815964879317649734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106101.P10815964879317649734

/-! ## A106101.P4849903335237818893

`filter[A084374(n+1), A010051(#)]`
-/

namespace A106101.P4849903335237818893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106101.P4849903335237818893

/-! ## A106101.P8309717960463426511

`∩[A000040(n+1), A084374(n+1)]`
-/

namespace A106101.P8309717960463426511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P8309717960463426511

/-! ## A106101.P8849251107865652282

`∩[A004139(n+1), A084374(n+1)]`
-/

namespace A106101.P8849251107865652282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P8849251107865652282

/-! ## A106101.P9534190676640415485

`∩[A006005(n+1), A084374(n+1)]`
-/

namespace A106101.P9534190676640415485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P9534190676640415485

/-! ## A106101.P16755690312979923907

`∩[A008578(n+1), A084374(n+1)]`
-/

namespace A106101.P16755690312979923907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P16755690312979923907

/-! ## A106101.P1208797457617985053

`∩[A033946(n+1), A084374(n+1)]`
-/

namespace A106101.P1208797457617985053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P1208797457617985053

/-! ## A106101.P9630748316123607519

`∩[A038618(n+1), A084374(n+1)]`
-/

namespace A106101.P9630748316123607519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P9630748316123607519

/-! ## A106101.P6460342056939345648

`∩[A045319(n+1), A084374(n+1)]`
-/

namespace A106101.P6460342056939345648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P6460342056939345648

/-! ## A106101.P14505760883568401115

`∩[A045344(n+1), A084374(n+1)]`
-/

namespace A106101.P14505760883568401115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P14505760883568401115

/-! ## A106101.P13789978520225296830

`∩[A046022(n+1), A084374(n+1)]`
-/

namespace A106101.P13789978520225296830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P13789978520225296830

/-! ## A106101.P2560319757821826247

`∩[A053813(n+1), A084374(n+1)]`
-/

namespace A106101.P2560319757821826247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106101.P2560319757821826247

/-!
# A106102: Primes with smallest digit 2.

The programs for A106102, the canonical program `A106102.P3375998700621158916` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106102 has offset 1).

The definition of A106102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106102.P3375998700621158916

`p?[A084373(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A106102

/-- `p?[A084373(n+1)]` -/
def P3375998700621158916.Spec : Prop :=
  ∀ n, P3375998700621158916.a n = A106102 (n + 1)

theorem P3375998700621158916.correct : P3375998700621158916.Spec := by
  intro n
  simp only [A106102, Nat.add_sub_cancel]

end A106102

/-! ## A106102.P11455388332125079967

`∩[A038603(n+1), A084373(n+1)]`
-/

namespace A106102.P11455388332125079967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P11455388332125079967

namespace A106102

/-- `∩[A038603(n+1), A084373(n+1)]` -/
def P11455388332125079967.Spec : Prop :=
  ∀ n, (P11455388332125079967.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P13797353686536501780

`∩[A084373(n+1), A106116(n+1)]`
-/

namespace A106102.P13797353686536501780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P13797353686536501780

namespace A106102

/-- `∩[A084373(n+1), A106116(n+1)]` -/
def P13797353686536501780.Spec : Prop :=
  ∀ n, (P13797353686536501780.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P9324010813616158624

`∩[A084373(n+1), A208272(n+1)]`
-/

namespace A106102.P9324010813616158624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P9324010813616158624

namespace A106102

/-- `∩[A084373(n+1), A208272(n+1)]` -/
def P9324010813616158624.Spec : Prop :=
  ∀ n, (P9324010813616158624.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P4661873605490212702

`∩[A106116(n+1), A208272(n+1)]`
-/

namespace A106102.P4661873605490212702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P4661873605490212702

namespace A106102

/-- `∩[A106116(n+1), A208272(n+1)]` -/
def P4661873605490212702.Spec : Prop :=
  ∀ n, (P4661873605490212702.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P7159216715300311229

`record[A020639(A084373(n+2))]`
-/

namespace A106102.P7159216715300311229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106102.P7159216715300311229

namespace A106102

/-- `record[A020639(A084373(n+2))]` -/
def P7159216715300311229.Spec : Prop :=
  ∀ n, P7159216715300311229.a n = A106102 (n + 1)

end A106102

/-! ## A106102.P18056892689422920847

`filter[A084373(n+1), A010051(#)]`
-/

namespace A106102.P18056892689422920847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106102.P18056892689422920847

namespace A106102

/-- `filter[A084373(n+1), A010051(#)]` -/
def P18056892689422920847.Spec : Prop :=
  ∀ n, P18056892689422920847.a n = A106102 (n + 1)

end A106102

/-! ## A106102.P14678855181552191655

`filter[A084373(n+1), A069513(#)]`
-/

namespace A106102.P14678855181552191655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A106102.P14678855181552191655

namespace A106102

/-- `filter[A084373(n+1), A069513(#)]` -/
def P14678855181552191655.Spec : Prop :=
  ∀ n, P14678855181552191655.a n = A106102 (n + 1)

end A106102

/-! ## A106102.P4509788228849344300

`filter[A084373(n+1), A358751(#)]`
-/

namespace A106102.P4509788228849344300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A106102.P4509788228849344300

namespace A106102

/-- `filter[A084373(n+1), A358751(#)]` -/
def P4509788228849344300.Spec : Prop :=
  ∀ n, P4509788228849344300.a n = A106102 (n + 1)

end A106102

/-! ## A106102.P12739422660420568707

`filter[A084373(n+2), A324290(#)]`
-/

namespace A106102.P12739422660420568707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A106102.P12739422660420568707

namespace A106102

/-- `filter[A084373(n+2), A324290(#)]` -/
def P12739422660420568707.Spec : Prop :=
  ∀ n, P12739422660420568707.a n = A106102 (n + 1)

end A106102

/-! ## A106102.P4195560394116456967

`∩[A000040(n+1), A084373(n+1)]`
-/

namespace A106102.P4195560394116456967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P4195560394116456967

namespace A106102

/-- `∩[A000040(n+1), A084373(n+1)]` -/
def P4195560394116456967.Spec : Prop :=
  ∀ n, (P4195560394116456967.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P4935938732775395754

`∩[A000430(n+1), A084373(n+1)]`
-/

namespace A106102.P4935938732775395754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P4935938732775395754

namespace A106102

/-- `∩[A000430(n+1), A084373(n+1)]` -/
def P4935938732775395754.Spec : Prop :=
  ∀ n, (P4935938732775395754.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P18150759304482541403

`∩[A009087(n+1), A084373(n+1)]`
-/

namespace A106102.P18150759304482541403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P18150759304482541403

namespace A106102

/-- `∩[A009087(n+1), A084373(n+1)]` -/
def P18150759304482541403.Spec : Prop :=
  ∀ n, (P18150759304482541403.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P16645790928187935367

`∩[A038618(n+1), A084373(n+1)]`
-/

namespace A106102.P16645790928187935367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P16645790928187935367

namespace A106102

/-- `∩[A038618(n+1), A084373(n+1)]` -/
def P16645790928187935367.Spec : Prop :=
  ∀ n, (P16645790928187935367.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P10219083604099386966

`∩[A040159(n+1), A084373(n+1)]`
-/

namespace A106102.P10219083604099386966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P10219083604099386966

namespace A106102

/-- `∩[A040159(n+1), A084373(n+1)]` -/
def P10219083604099386966.Spec : Prop :=
  ∀ n, (P10219083604099386966.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P2139513098283551824

`∩[A040161(n+1), A084373(n+1)]`
-/

namespace A106102.P2139513098283551824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P2139513098283551824

namespace A106102

/-- `∩[A040161(n+1), A084373(n+1)]` -/
def P2139513098283551824.Spec : Prop :=
  ∀ n, (P2139513098283551824.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P10836831726294568967

`∩[A040165(n+1), A084373(n+1)]`
-/

namespace A106102.P10836831726294568967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P10836831726294568967

namespace A106102

/-- `∩[A040165(n+1), A084373(n+1)]` -/
def P10836831726294568967.Spec : Prop :=
  ∀ n, (P10836831726294568967.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P1260543738024730765

`∩[A040169(n+1), A084373(n+1)]`
-/

namespace A106102.P1260543738024730765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P1260543738024730765

namespace A106102

/-- `∩[A040169(n+1), A084373(n+1)]` -/
def P1260543738024730765.Spec : Prop :=
  ∀ n, (P1260543738024730765.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P4542572836076224185

`∩[A040171(n+1), A084373(n+1)]`
-/

namespace A106102.P4542572836076224185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P4542572836076224185

namespace A106102

/-- `∩[A040171(n+1), A084373(n+1)]` -/
def P4542572836076224185.Spec : Prop :=
  ∀ n, (P4542572836076224185.a n : ℤ) = A106102 (n + 1)

end A106102

/-! ## A106102.P403533949726396799

`∩[A040177(n+1), A084373(n+1)]`
-/

namespace A106102.P403533949726396799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106102.P403533949726396799

namespace A106102

/-- `∩[A040177(n+1), A084373(n+1)]` -/
def P403533949726396799.Spec : Prop :=
  ∀ n, (P403533949726396799.a n : ℤ) = A106102 (n + 1)

end A106102

/-!
# A106103: Primes with minimal digit = 3.

The programs for A106103, the canonical program `A106103.P12542325979256717480` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106103 has offset 1).

The definition of A106103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106103.P10592621017099236347

`∩[A106115(n+1), A245623(n+1)]`
-/

namespace A106103.P10592621017099236347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P10592621017099236347

namespace A106103

/-- `∩[A106115(n+1), A245623(n+1)]` -/
def P10592621017099236347.Spec : Prop :=
  ∀ n, (P10592621017099236347.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P12750257034616159026

`∩[A155034(n+1), A245623(n+1)]`
-/

namespace A106103.P12750257034616159026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P12750257034616159026

namespace A106103

/-- `∩[A155034(n+1), A245623(n+1)]` -/
def P12750257034616159026.Spec : Prop :=
  ∀ n, (P12750257034616159026.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P417400081774723109

`A065091(eq[3, A060420(n+1)])`
-/

namespace A106103.P417400081774723109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106103.P417400081774723109

namespace A106103

/-- `A065091(eq[3, A060420(n+1)])` -/
def P417400081774723109.Spec : Prop :=
  ∀ n, P417400081774723109.a n = A106103 (n + 1)

end A106103

/-! ## A106103.P5248524000019160307

`∩[A062667(n+1), A106115(n+1)]`
-/

namespace A106103.P5248524000019160307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P5248524000019160307

namespace A106103

/-- `∩[A062667(n+1), A106115(n+1)]` -/
def P5248524000019160307.Spec : Prop :=
  ∀ n, (P5248524000019160307.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P10744285637542152194

`∩[A062667(n+1), A155034(n+1)]`
-/

namespace A106103.P10744285637542152194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P10744285637542152194

namespace A106103

/-- `∩[A062667(n+1), A155034(n+1)]` -/
def P10744285637542152194.Spec : Prop :=
  ∀ n, (P10744285637542152194.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P6472119504085508793

`∩[A106115(n+1), A212525(n+1)]`
-/

namespace A106103.P6472119504085508793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P6472119504085508793

namespace A106103

/-- `∩[A106115(n+1), A212525(n+1)]` -/
def P6472119504085508793.Spec : Prop :=
  ∀ n, (P6472119504085508793.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P15316550423291987619

`∩[A155034(n+1), A212525(n+1)]`
-/

namespace A106103.P15316550423291987619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P15316550423291987619

namespace A106103

/-- `∩[A155034(n+1), A212525(n+1)]` -/
def P15316550423291987619.Spec : Prop :=
  ∀ n, (P15316550423291987619.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P12542325979256717480

`p?[A284064(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A106103

/-- `p?[A284064(n+1)]` -/
def P12542325979256717480.Spec : Prop :=
  ∀ n, P12542325979256717480.a n = A106103 (n + 1)

theorem P12542325979256717480.correct : P12542325979256717480.Spec := by
  intro n
  simp only [A106103, Nat.add_sub_cancel]

end A106103

/-! ## A106103.P2159463695436877330

`filter[A284064(n+1), A010051(#)]`
-/

namespace A106103.P2159463695436877330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106103.P2159463695436877330

namespace A106103

/-- `filter[A284064(n+1), A010051(#)]` -/
def P2159463695436877330.Spec : Prop :=
  ∀ n, P2159463695436877330.a n = A106103 (n + 1)

end A106103

/-! ## A106103.P17051855558294066133

`∩[A000040(n+1), A284064(n+1)]`
-/

namespace A106103.P17051855558294066133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P17051855558294066133

namespace A106103

/-- `∩[A000040(n+1), A284064(n+1)]` -/
def P17051855558294066133.Spec : Prop :=
  ∀ n, (P17051855558294066133.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P9974730076194655673

`∩[A000430(n+1), A284064(n+1)]`
-/

namespace A106103.P9974730076194655673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P9974730076194655673

namespace A106103

/-- `∩[A000430(n+1), A284064(n+1)]` -/
def P9974730076194655673.Spec : Prop :=
  ∀ n, (P9974730076194655673.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P3507199093901333380

`∩[A004139(n+1), A284064(n+1)]`
-/

namespace A106103.P3507199093901333380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P3507199093901333380

namespace A106103

/-- `∩[A004139(n+1), A284064(n+1)]` -/
def P3507199093901333380.Spec : Prop :=
  ∀ n, (P3507199093901333380.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P4276174950156138160

`∩[A006005(n+1), A284064(n+1)]`
-/

namespace A106103.P4276174950156138160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P4276174950156138160

namespace A106103

/-- `∩[A006005(n+1), A284064(n+1)]` -/
def P4276174950156138160.Spec : Prop :=
  ∀ n, (P4276174950156138160.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P11869153442636776133

`∩[A008578(n+1), A284064(n+1)]`
-/

namespace A106103.P11869153442636776133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P11869153442636776133

namespace A106103

/-- `∩[A008578(n+1), A284064(n+1)]` -/
def P11869153442636776133.Spec : Prop :=
  ∀ n, (P11869153442636776133.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P10154850008458129862

`∩[A033946(n+1), A284064(n+1)]`
-/

namespace A106103.P10154850008458129862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P10154850008458129862

namespace A106103

/-- `∩[A033946(n+1), A284064(n+1)]` -/
def P10154850008458129862.Spec : Prop :=
  ∀ n, (P10154850008458129862.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P6265988062369076149

`∩[A038603(n+1), A284064(n+1)]`
-/

namespace A106103.P6265988062369076149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P6265988062369076149

namespace A106103

/-- `∩[A038603(n+1), A284064(n+1)]` -/
def P6265988062369076149.Spec : Prop :=
  ∀ n, (P6265988062369076149.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P14566133008302411265

`∩[A038604(n+1), A284064(n+1)]`
-/

namespace A106103.P14566133008302411265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P14566133008302411265

namespace A106103

/-- `∩[A038604(n+1), A284064(n+1)]` -/
def P14566133008302411265.Spec : Prop :=
  ∀ n, (P14566133008302411265.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P9235553445965496342

`∩[A038618(n+1), A284064(n+1)]`
-/

namespace A106103.P9235553445965496342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P9235553445965496342

namespace A106103

/-- `∩[A038618(n+1), A284064(n+1)]` -/
def P9235553445965496342.Spec : Prop :=
  ∀ n, (P9235553445965496342.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P7891121487103171487

`∩[A040159(n+1), A284064(n+1)]`
-/

namespace A106103.P7891121487103171487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P7891121487103171487

namespace A106103

/-- `∩[A040159(n+1), A284064(n+1)]` -/
def P7891121487103171487.Spec : Prop :=
  ∀ n, (P7891121487103171487.a n : ℤ) = A106103 (n + 1)

end A106103

/-! ## A106103.P17331841437605413335

`∩[A040161(n+1), A284064(n+1)]`
-/

namespace A106103.P17331841437605413335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106103.P17331841437605413335

namespace A106103

/-- `∩[A040161(n+1), A284064(n+1)]` -/
def P17331841437605413335.Spec : Prop :=
  ∀ n, (P17331841437605413335.a n : ℤ) = A106103 (n + 1)

end A106103

/-!
# A106104: Primes with minimal digit = 4.

The programs for A106104, the canonical program `A106104.P9737292907009489359` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106104 has offset 1).

The definition of A106104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106104.P9737292907009489359

`p?[A284065(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106104

/-- `p?[A284065(n+1)]` -/
def P9737292907009489359.Spec : Prop :=
  ∀ n, P9737292907009489359.a n = A106104 (n + 1)

theorem P9737292907009489359.correct : P9737292907009489359.Spec := by
  intro n
  simp only [A106104, Nat.add_sub_cancel]

end A106104

/-! ## A106104.P9524163100145225241

`∩[A038603(n+1), A284065(n+1)]`
-/

namespace A106104.P9524163100145225241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P9524163100145225241

namespace A106104

/-- `∩[A038603(n+1), A284065(n+1)]` -/
def P9524163100145225241.Spec : Prop :=
  ∀ n, (P9524163100145225241.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P10184134521710210351

`∩[A038604(n+1), A284065(n+1)]`
-/

namespace A106104.P10184134521710210351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P10184134521710210351

namespace A106104

/-- `∩[A038604(n+1), A284065(n+1)]` -/
def P10184134521710210351.Spec : Prop :=
  ∀ n, (P10184134521710210351.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P4287791820026896029

`∩[A038611(n+1), A284065(n+1)]`
-/

namespace A106104.P4287791820026896029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P4287791820026896029

namespace A106104

/-- `∩[A038611(n+1), A284065(n+1)]` -/
def P4287791820026896029.Spec : Prop :=
  ∀ n, (P4287791820026896029.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P9567121498758108663

`∩[A106114(n+1), A284065(n+1)]`
-/

namespace A106104.P9567121498758108663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P9567121498758108663

namespace A106104

/-- `∩[A106114(n+1), A284065(n+1)]` -/
def P9567121498758108663.Spec : Prop :=
  ∀ n, (P9567121498758108663.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P11341861163800291487

`∩[A106115(n+1), A284065(n+1)]`
-/

namespace A106104.P11341861163800291487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P11341861163800291487

namespace A106104

/-- `∩[A106115(n+1), A284065(n+1)]` -/
def P11341861163800291487.Spec : Prop :=
  ∀ n, (P11341861163800291487.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P2651399198518749937

`∩[A106116(n+1), A284065(n+1)]`
-/

namespace A106104.P2651399198518749937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P2651399198518749937

namespace A106104

/-- `∩[A106116(n+1), A284065(n+1)]` -/
def P2651399198518749937.Spec : Prop :=
  ∀ n, (P2651399198518749937.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P10352169935671861386

`∩[A284065(n+1), A386328(n+1)]`
-/

namespace A106104.P10352169935671861386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P10352169935671861386

namespace A106104

/-- `∩[A284065(n+1), A386328(n+1)]` -/
def P10352169935671861386.Spec : Prop :=
  ∀ n, (P10352169935671861386.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P4084025413279069601

`∩[A284065(n+1), A386329(n+1)]`
-/

namespace A106104.P4084025413279069601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P4084025413279069601

namespace A106104

/-- `∩[A284065(n+1), A386329(n+1)]` -/
def P4084025413279069601.Spec : Prop :=
  ∀ n, (P4084025413279069601.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P3377453035543886777

`∩[A284065(n+1), A386335(n+1)]`
-/

namespace A106104.P3377453035543886777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P3377453035543886777

namespace A106104

/-- `∩[A284065(n+1), A386335(n+1)]` -/
def P3377453035543886777.Spec : Prop :=
  ∀ n, (P3377453035543886777.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P5955869610394924010

`∩[A284065(n+1), A386321(n+1)]`
-/

namespace A106104.P5955869610394924010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P5955869610394924010

namespace A106104

/-- `∩[A284065(n+1), A386321(n+1)]` -/
def P5955869610394924010.Spec : Prop :=
  ∀ n, (P5955869610394924010.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P14149959346846877064

`A045344(eq[4, A060420(n+1)])`
-/

namespace A106104.P14149959346846877064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106104.P14149959346846877064

namespace A106104

/-- `A045344(eq[4, A060420(n+1)])` -/
def P14149959346846877064.Spec : Prop :=
  ∀ n, P14149959346846877064.a n = A106104 (n + 1)

end A106104

/-! ## A106104.P8068362266340141048

`A065091(eq[4, A060420(n+1)])`
-/

namespace A106104.P8068362266340141048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106104.P8068362266340141048

namespace A106104

/-- `A065091(eq[4, A060420(n+1)])` -/
def P8068362266340141048.Spec : Prop :=
  ∀ n, P8068362266340141048.a n = A106104 (n + 1)

end A106104

/-! ## A106104.P16858567422154967437

`filter[A284065(n+1), A010051(#)]`
-/

namespace A106104.P16858567422154967437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106104.P16858567422154967437

namespace A106104

/-- `filter[A284065(n+1), A010051(#)]` -/
def P16858567422154967437.Spec : Prop :=
  ∀ n, P16858567422154967437.a n = A106104 (n + 1)

end A106104

/-! ## A106104.P3587337390511766477

`A000040(eq[4, A060420(n+1)]+1)`
-/

namespace A106104.P3587337390511766477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106104.P3587337390511766477

namespace A106104

/-- `A000040(eq[4, A060420(n+1)]+1)` -/
def P3587337390511766477.Spec : Prop :=
  ∀ n, P3587337390511766477.a n = A106104 (n + 1)

end A106104

/-! ## A106104.P18194829110933931784

`∩[A062669(n+1), A106114(n+1)]`
-/

namespace A106104.P18194829110933931784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P18194829110933931784

namespace A106104

/-- `∩[A062669(n+1), A106114(n+1)]` -/
def P18194829110933931784.Spec : Prop :=
  ∀ n, (P18194829110933931784.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P11812287929037166147

`∩[A000040(n+1), A284065(n+1)]`
-/

namespace A106104.P11812287929037166147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P11812287929037166147

namespace A106104

/-- `∩[A000040(n+1), A284065(n+1)]` -/
def P11812287929037166147.Spec : Prop :=
  ∀ n, (P11812287929037166147.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P2890545887535089288

`∩[A004139(n+1), A284065(n+1)]`
-/

namespace A106104.P2890545887535089288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P2890545887535089288

namespace A106104

/-- `∩[A004139(n+1), A284065(n+1)]` -/
def P2890545887535089288.Spec : Prop :=
  ∀ n, (P2890545887535089288.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P933453132701498287

`∩[A006005(n+1), A284065(n+1)]`
-/

namespace A106104.P933453132701498287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P933453132701498287

namespace A106104

/-- `∩[A006005(n+1), A284065(n+1)]` -/
def P933453132701498287.Spec : Prop :=
  ∀ n, (P933453132701498287.a n : ℤ) = A106104 (n + 1)

end A106104

/-! ## A106104.P837509697815023086

`∩[A008578(n+1), A284065(n+1)]`
-/

namespace A106104.P837509697815023086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106104.P837509697815023086

namespace A106104

/-- `∩[A008578(n+1), A284065(n+1)]` -/
def P837509697815023086.Spec : Prop :=
  ∀ n, (P837509697815023086.a n : ℤ) = A106104 (n + 1)

end A106104

/-!
# A106105: Primes with minimal digit = 5.

The programs for A106105, the canonical program `A106105.P11111167386212144028` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106105 has offset 1).

The definition of A106105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 724 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106105.P15107107788641339700

`∩[A106112(n+1), A257667(n+1)]`
-/

namespace A106105.P15107107788641339700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P15107107788641339700

namespace A106105

/-- `∩[A106112(n+1), A257667(n+1)]` -/
def P15107107788641339700.Spec : Prop :=
  ∀ n, (P15107107788641339700.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P11111167386212144028

`p?[A284066(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106105

/-- `p?[A284066(n+1)]` -/
def P11111167386212144028.Spec : Prop :=
  ∀ n, P11111167386212144028.a n = A106105 (n + 1)

theorem P11111167386212144028.correct : P11111167386212144028.Spec := by
  intro n
  simp only [A106105, Nat.add_sub_cancel]

end A106105

/-! ## A106105.P12119228148753854800

`∩[A038603(n+1), A284066(n+1)]`
-/

namespace A106105.P12119228148753854800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P12119228148753854800

namespace A106105

/-- `∩[A038603(n+1), A284066(n+1)]` -/
def P12119228148753854800.Spec : Prop :=
  ∀ n, (P12119228148753854800.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P6763815836860748239

`∩[A038604(n+1), A284066(n+1)]`
-/

namespace A106105.P6763815836860748239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P6763815836860748239

namespace A106105

/-- `∩[A038604(n+1), A284066(n+1)]` -/
def P6763815836860748239.Spec : Prop :=
  ∀ n, (P6763815836860748239.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P1116615825091955557

`∩[A038611(n+1), A284066(n+1)]`
-/

namespace A106105.P1116615825091955557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P1116615825091955557

namespace A106105

/-- `∩[A038611(n+1), A284066(n+1)]` -/
def P1116615825091955557.Spec : Prop :=
  ∀ n, (P1116615825091955557.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P2109690177379226376

`∩[A106112(n+1), A284066(n+1)]`
-/

namespace A106105.P2109690177379226376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P2109690177379226376

namespace A106105

/-- `∩[A106112(n+1), A284066(n+1)]` -/
def P2109690177379226376.Spec : Prop :=
  ∀ n, (P2109690177379226376.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P5609344676107815244

`∩[A106114(n+1), A284066(n+1)]`
-/

namespace A106105.P5609344676107815244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P5609344676107815244

namespace A106105

/-- `∩[A106114(n+1), A284066(n+1)]` -/
def P5609344676107815244.Spec : Prop :=
  ∀ n, (P5609344676107815244.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P12601018864125545191

`∩[A106115(n+1), A284066(n+1)]`
-/

namespace A106105.P12601018864125545191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P12601018864125545191

namespace A106105

/-- `∩[A106115(n+1), A284066(n+1)]` -/
def P12601018864125545191.Spec : Prop :=
  ∀ n, (P12601018864125545191.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P16581935944496956616

`∩[A155034(n+1), A284066(n+1)]`
-/

namespace A106105.P16581935944496956616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P16581935944496956616

namespace A106105

/-- `∩[A155034(n+1), A284066(n+1)]` -/
def P16581935944496956616.Spec : Prop :=
  ∀ n, (P16581935944496956616.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P14683771573806783586

`∩[A257667(n+1), A284066(n+1)]`
-/

namespace A106105.P14683771573806783586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P14683771573806783586

namespace A106105

/-- `∩[A257667(n+1), A284066(n+1)]` -/
def P14683771573806783586.Spec : Prop :=
  ∀ n, (P14683771573806783586.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P1916194428483295371

`∩[A284066(n+1), A386329(n+1)]`
-/

namespace A106105.P1916194428483295371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P1916194428483295371

namespace A106105

/-- `∩[A284066(n+1), A386329(n+1)]` -/
def P1916194428483295371.Spec : Prop :=
  ∀ n, (P1916194428483295371.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P17637108387580039679

`∩[A284066(n+1), A386328(n+1)]`
-/

namespace A106105.P17637108387580039679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P17637108387580039679

namespace A106105

/-- `∩[A284066(n+1), A386328(n+1)]` -/
def P17637108387580039679.Spec : Prop :=
  ∀ n, (P17637108387580039679.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P15657810590746720227

`∩[A284066(n+1), A386335(n+1)]`
-/

namespace A106105.P15657810590746720227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P15657810590746720227

namespace A106105

/-- `∩[A284066(n+1), A386335(n+1)]` -/
def P15657810590746720227.Spec : Prop :=
  ∀ n, (P15657810590746720227.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P15393279389288684960

`∩[A284066(n+1), A386330(n+1)]`
-/

namespace A106105.P15393279389288684960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P15393279389288684960

namespace A106105

/-- `∩[A284066(n+1), A386330(n+1)]` -/
def P15393279389288684960.Spec : Prop :=
  ∀ n, (P15393279389288684960.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P14675173627973706837

`∩[A284066(n+1), A386340(n+1)]`
-/

namespace A106105.P14675173627973706837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P14675173627973706837

namespace A106105

/-- `∩[A284066(n+1), A386340(n+1)]` -/
def P14675173627973706837.Spec : Prop :=
  ∀ n, (P14675173627973706837.a n : ℤ) = A106105 (n + 1)

end A106105

/-! ## A106105.P3856506325228469442

`A045344(eq[5, A060420(n+1)])`
-/

namespace A106105.P3856506325228469442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106105.P3856506325228469442

namespace A106105

/-- `A045344(eq[5, A060420(n+1)])` -/
def P3856506325228469442.Spec : Prop :=
  ∀ n, P3856506325228469442.a n = A106105 (n + 1)

end A106105

/-! ## A106105.P5012857912890301898

`A065091(eq[5, A060420(n+1)])`
-/

namespace A106105.P5012857912890301898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106105.P5012857912890301898

namespace A106105

/-- `A065091(eq[5, A060420(n+1)])` -/
def P5012857912890301898.Spec : Prop :=
  ∀ n, P5012857912890301898.a n = A106105 (n + 1)

end A106105

/-! ## A106105.P2526747497632328015

`filter[A284066(n+1), A010051(#)]`
-/

namespace A106105.P2526747497632328015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106105.P2526747497632328015

namespace A106105

/-- `filter[A284066(n+1), A010051(#)]` -/
def P2526747497632328015.Spec : Prop :=
  ∀ n, P2526747497632328015.a n = A106105 (n + 1)

end A106105

/-! ## A106105.P14136503427147432795

`filter[A284066(n+1), A355937(#)]`
-/

namespace A106105.P14136503427147432795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A106105.P14136503427147432795

namespace A106105

/-- `filter[A284066(n+1), A355937(#)]` -/
def P14136503427147432795.Spec : Prop :=
  ∀ n, P14136503427147432795.a n = A106105 (n + 1)

end A106105

/-! ## A106105.P6264537519811750633

`∩[A062671(n+1), A106112(n+1)]`
-/

namespace A106105.P6264537519811750633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106105.P6264537519811750633

namespace A106105

/-- `∩[A062671(n+1), A106112(n+1)]` -/
def P6264537519811750633.Spec : Prop :=
  ∀ n, (P6264537519811750633.a n : ℤ) = A106105 (n + 1)

end A106105

/-!
# A106106: Primes with minimal digit = 6.

The programs for A106106, the canonical program `A106106.P2162882083934937386` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106106 has offset 1).

The definition of A106106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106106.P610417355571347793

`∩[A106111(n+1), A284067(n+1)]`
-/

namespace A106106.P610417355571347793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106106.P610417355571347793

namespace A106106

/-- `∩[A106111(n+1), A284067(n+1)]` -/
def P610417355571347793.Spec : Prop :=
  ∀ n, (P610417355571347793.a n : ℤ) = A106106 (n + 1)

end A106106

/-! ## A106106.P7974222278702822781

`∩[A106112(n+1), A284067(n+1)]`
-/

namespace A106106.P7974222278702822781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106106.P7974222278702822781

namespace A106106

/-- `∩[A106112(n+1), A284067(n+1)]` -/
def P7974222278702822781.Spec : Prop :=
  ∀ n, (P7974222278702822781.a n : ℤ) = A106106 (n + 1)

end A106106

/-! ## A106106.P9032168286336346790

`∩[A106114(n+1), A284067(n+1)]`
-/

namespace A106106.P9032168286336346790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106106.P9032168286336346790

namespace A106106

/-- `∩[A106114(n+1), A284067(n+1)]` -/
def P9032168286336346790.Spec : Prop :=
  ∀ n, (P9032168286336346790.a n : ℤ) = A106106 (n + 1)

end A106106

/-! ## A106106.P2162882083934937386

`p?[A284067(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106106

/-- `p?[A284067(n+1)]` -/
def P2162882083934937386.Spec : Prop :=
  ∀ n, P2162882083934937386.a n = A106106 (n + 1)

theorem P2162882083934937386.correct : P2162882083934937386.Spec := by
  intro n
  simp only [A106106, Nat.add_sub_cancel]

end A106106

/-! ## A106106.P906910771349686725

`∩[A106115(n+1), A284067(n+1)]`
-/

namespace A106106.P906910771349686725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106106.P906910771349686725

namespace A106106

/-- `∩[A106115(n+1), A284067(n+1)]` -/
def P906910771349686725.Spec : Prop :=
  ∀ n, (P906910771349686725.a n : ℤ) = A106106 (n + 1)

end A106106

/-! ## A106106.P2652923600028019414

`∩[A284067(n+1), A386329(n+1)]`
-/

namespace A106106.P2652923600028019414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106106.P2652923600028019414

namespace A106106

/-- `∩[A284067(n+1), A386329(n+1)]` -/
def P2652923600028019414.Spec : Prop :=
  ∀ n, (P2652923600028019414.a n : ℤ) = A106106 (n + 1)

end A106106

/-! ## A106106.P3819363536766258798

`A045344(eq[6, A060420(n+1)])`
-/

namespace A106106.P3819363536766258798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106106.P3819363536766258798

namespace A106106

/-- `A045344(eq[6, A060420(n+1)])` -/
def P3819363536766258798.Spec : Prop :=
  ∀ n, P3819363536766258798.a n = A106106 (n + 1)

end A106106

/-! ## A106106.P17459310809221815160

`A065091(eq[6, A060420(n+1)])`
-/

namespace A106106.P17459310809221815160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106106.P17459310809221815160

namespace A106106

/-- `A065091(eq[6, A060420(n+1)])` -/
def P17459310809221815160.Spec : Prop :=
  ∀ n, P17459310809221815160.a n = A106106 (n + 1)

end A106106

/-! ## A106106.P17415277498034915954

`∩[A062673(n+1), A106111(n+1)]`
-/

namespace A106106.P17415277498034915954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106106.P17415277498034915954

namespace A106106

/-- `∩[A062673(n+1), A106111(n+1)]` -/
def P17415277498034915954.Spec : Prop :=
  ∀ n, (P17415277498034915954.a n : ℤ) = A106106 (n + 1)

end A106106

/-!
# A106107: Primes with minimal digit = 7.

The programs for A106107, there is no canonical definition to state claims against.
-/

/-! ## A106107.P6890366508443511573

`∩[A106110(n+1), A284068(n+1)]`
-/

namespace A106107.P6890366508443511573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P6890366508443511573

/-! ## A106107.P6600134427391502410

`∩[A106111(n+1), A284068(n+1)]`
-/

namespace A106107.P6600134427391502410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P6600134427391502410

/-! ## A106107.P17257846706360257754

`∩[A106112(n+1), A284068(n+1)]`
-/

namespace A106107.P17257846706360257754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P17257846706360257754

/-! ## A106107.P8074678097105177118

`∩[A284068(n+1), A386084(n+1)]`
-/

namespace A106107.P8074678097105177118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P8074678097105177118

/-! ## A106107.P7431713219703066362

`∩[A284068(n+1), A386138(n+1)]`
-/

namespace A106107.P7431713219703066362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P7431713219703066362

/-! ## A106107.P10568483694137534745

`∩[A284068(n+1), A386168(n+1)]`
-/

namespace A106107.P10568483694137534745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P10568483694137534745

/-! ## A106107.P11564595175566973998

`∩[A284068(n+1), A386187(n+1)]`
-/

namespace A106107.P11564595175566973998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P11564595175566973998

/-! ## A106107.P5915497337350893215

`∩[A284068(n+1), A386195(n+1)]`
-/

namespace A106107.P5915497337350893215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P5915497337350893215

/-! ## A106107.P5849605148598687964

`∩[A284068(n+1), A386199(n+1)]`
-/

namespace A106107.P5849605148598687964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P5849605148598687964

/-! ## A106107.P7079389921253711242

`p?[A284068(n+1)]`
-/

namespace A106107.P7079389921253711242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106107.P7079389921253711242

/-! ## A106107.P5706488311094318712

`∩[A106110(n+1), A155034(n+1)]`
-/

namespace A106107.P5706488311094318712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P5706488311094318712

/-! ## A106107.P5721661915281764416

`∩[A106111(n+1), A155034(n+1)]`
-/

namespace A106107.P5721661915281764416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P5721661915281764416

/-! ## A106107.P2234379743075111874

`∩[A106110(n+1), A179030(n+1)]`
-/

namespace A106107.P2234379743075111874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P2234379743075111874

/-! ## A106107.P4286180255283597055

`∩[A155034(n+1), A179030(n+1)]`
-/

namespace A106107.P4286180255283597055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P4286180255283597055

/-! ## A106107.P3508928633771981986

`∩[A106114(n+1), A284068(n+1)]`
-/

namespace A106107.P3508928633771981986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P3508928633771981986

/-! ## A106107.P12512798765232376118

`∩[A155034(n+1), A284068(n+1)]`
-/

namespace A106107.P12512798765232376118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P12512798765232376118

/-! ## A106107.P8570291223242953589

`∩[A179030(n+1), A284068(n+1)]`
-/

namespace A106107.P8570291223242953589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P8570291223242953589

/-! ## A106107.P8655957770675426924

`∩[A155034(n+1), A386084(n+1)]`
-/

namespace A106107.P8655957770675426924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P8655957770675426924

/-! ## A106107.P4796880510695224289

`∩[A155034(n+1), A386138(n+1)]`
-/

namespace A106107.P4796880510695224289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P4796880510695224289

/-! ## A106107.P7039270815442974064

`∩[A155034(n+1), A386168(n+1)]`
-/

namespace A106107.P7039270815442974064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106107.P7039270815442974064

/-!
# A106108: Rowland's prime-generating sequence: a(1) = 7; for n > 1, a(n) = a(n-1) + gcd(n, a(n-1)).

The programs for A106108, the canonical program `A106108.P10627651117089182159` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106108 has offset 1).

The definition of A106108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+1, a(n-1))` (program `A106108.P10627651117089182159`, by `A106108.P10627651117089182159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106108.P10627651117089182159

`a(n-1)+gcd(n+1, a(n-1))` with `a(0)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106108

/-- `a(n-1)+gcd(n+1, a(n-1))` -/
def P10627651117089182159.Spec : Prop :=
  ∀ n, (P10627651117089182159.a n : ℤ) = A106108 (n + 1)

theorem P10627651117089182159.correct : P10627651117089182159.Spec := by
  intro n
  simp only [A106108, Nat.add_sub_cancel]

end A106108

/-! ## A106108.P5854177720382075892

`A132199(n)+a(n-1)` with `a(0)=7`
-/

namespace A106108.P5854177720382075892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A132199 n + a (n - 1)

end

end A106108.P5854177720382075892

namespace A106108

/-- `A132199(n)+a(n-1)` -/
def P5854177720382075892.Spec : Prop :=
  ∀ n, P5854177720382075892.a n = A106108 (n + 1)

end A106108

/-! ## A106108.P13158321422033249272

`∑[A134743(lcm(n, a(n-1)))]` with `a(0)=7, a(1)=1, a(2)=1`
-/

namespace A106108.P13158321422033249272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1, 1] fun n f1 =>
  A134743 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106108.P13158321422033249272

namespace A106108

/-- `∑[A134743(lcm(n, a(n-1)))]` -/
def P13158321422033249272.Spec : Prop :=
  ∀ n, P13158321422033249272.a n = A106108 (n + 1)

end A106108

/-! ## A106108.P13737192158465027374

`A134736(n+1)+2*C(n, n²)`
-/

namespace A106108.P13737192158465027374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) + (2 * Nat.choose n (n ^ 2) : ℤ)

end

end A106108.P13737192158465027374

namespace A106108

/-- `A134736(n+1)+2*C(n, n²)` -/
def P13737192158465027374.Spec : Prop :=
  ∀ n, P13737192158465027374.a n = A106108 (n + 1)

end A106108

/-! ## A106108.P14090083396669810088

`A134736(n+1)+val(A230504(n+1)², 2)`
-/

namespace A106108.P14090083396669810088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134736 (n + 1) + (SequenceMachineLib.valuation (A230504 (n + 1) ^ 2).toNat 2 : ℤ)

end

end A106108.P14090083396669810088

namespace A106108

/-- `A134736(n+1)+val(A230504(n+1)², 2)` -/
def P14090083396669810088.Spec : Prop :=
  ∀ n, P14090083396669810088.a n = A106108 (n + 1)

end A106108

/-! ## A106108.P12364399347354503896

`∑[A132199(n+1)]+7-A132199(n+1)`
-/

namespace A106108.P12364399347354503896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (7 - A132199 (n + 1))

end

end A106108.P12364399347354503896

namespace A106108

/-- `∑[A132199(n+1)]+7-A132199(n+1)` -/
def P12364399347354503896.Spec : Prop :=
  ∀ n, P12364399347354503896.a n = A106108 (n + 1)

end A106108

/-! ## A106108.P15967020063347776512

`A084662(n+1)+xor(A132199(n+1), A134734(n+1))`
-/

namespace A106108.P15967020063347776512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084662 (n + 1) + Int.xor (A132199 (n + 1)) (A134734 (n + 1))

end

end A106108.P15967020063347776512

namespace A106108

/-- `A084662(n+1)+xor(A132199(n+1), A134734(n+1))` -/
def P15967020063347776512.Spec : Prop :=
  ∀ n, P15967020063347776512.a n = A106108 (n + 1)

end A106108

/-!
# A106110: Primes having only {7, 8, 9} as digits.

The programs for A106110, there is no canonical definition to state claims against.
-/

/-! ## A106110.P17797008381137199234

`∪[A020472(n+1), A106107(n+1)]`
-/

namespace A106110.P17797008381137199234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P17797008381137199234

/-! ## A106110.P1081344450846251807

`∩[A106111(n+1), A386084(n+1)]`
-/

namespace A106110.P1081344450846251807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P1081344450846251807

/-! ## A106110.P14388839730904438717

`∩[A106111(n+1), A386138(n+1)]`
-/

namespace A106110.P14388839730904438717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P14388839730904438717

/-! ## A106110.P11281928324158536289

`∩[A106111(n+1), A386168(n+1)]`
-/

namespace A106110.P11281928324158536289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P11281928324158536289

/-! ## A106110.P17025683251232822173

`∩[A106111(n+1), A386187(n+1)]`
-/

namespace A106110.P17025683251232822173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P17025683251232822173

/-! ## A106110.P14118766140524397906

`∩[A106111(n+1), A386195(n+1)]`
-/

namespace A106110.P14118766140524397906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P14118766140524397906

/-! ## A106110.P10897030508664020329

`∩[A106111(n+1), A386199(n+1)]`
-/

namespace A106110.P10897030508664020329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P10897030508664020329

/-! ## A106110.P13373728597033706331

`∩[A386084(n+1), A386138(n+1)]`
-/

namespace A106110.P13373728597033706331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P13373728597033706331

/-! ## A106110.P17064483965449900085

`∩[A386084(n+1), A386168(n+1)]`
-/

namespace A106110.P17064483965449900085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P17064483965449900085

/-! ## A106110.P3879694614955919336

`∩[A386084(n+1), A386187(n+1)]`
-/

namespace A106110.P3879694614955919336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P3879694614955919336

/-! ## A106110.P16356497011792551087

`∩[A386084(n+1), A386195(n+1)]`
-/

namespace A106110.P16356497011792551087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P16356497011792551087

/-! ## A106110.P6891353380142760206

`∩[A386084(n+1), A386199(n+1)]`
-/

namespace A106110.P6891353380142760206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P6891353380142760206

/-! ## A106110.P4244412228689283208

`∩[A386138(n+1), A386168(n+1)]`
-/

namespace A106110.P4244412228689283208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P4244412228689283208

/-! ## A106110.P442495906311358975

`∩[A386138(n+1), A386187(n+1)]`
-/

namespace A106110.P442495906311358975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P442495906311358975

/-! ## A106110.P13314435010330137180

`∩[A386138(n+1), A386195(n+1)]`
-/

namespace A106110.P13314435010330137180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P13314435010330137180

/-! ## A106110.P17318554816594030698

`∩[A386138(n+1), A386199(n+1)]`
-/

namespace A106110.P17318554816594030698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P17318554816594030698

/-! ## A106110.P16936921377827568692

`∩[A386168(n+1), A386187(n+1)]`
-/

namespace A106110.P16936921377827568692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P16936921377827568692

/-! ## A106110.P9094574622695835988

`∩[A386168(n+1), A386195(n+1)]`
-/

namespace A106110.P9094574622695835988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P9094574622695835988

/-! ## A106110.P6750957398726341344

`∩[A386168(n+1), A386199(n+1)]`
-/

namespace A106110.P6750957398726341344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P6750957398726341344

/-! ## A106110.P7290909270639688482

`∩[A386187(n+1), A386195(n+1)]`
-/

namespace A106110.P7290909270639688482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106110.P7290909270639688482

/-!
# A106111: Primes having only {6, 7, 8, 9} as digits.

The programs for A106111, there is no canonical definition to state claims against.
-/

/-! ## A106111.P2480813977491209058

`∪[A106106(n+1), A106110(n+1)]`
-/

namespace A106111.P2480813977491209058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P2480813977491209058

/-! ## A106111.P8878067084523730488

`∩[A038613(n+1), A106112(n+1)]`
-/

namespace A106111.P8878067084523730488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P8878067084523730488

/-! ## A106111.P7961136052937292140

`∩[A106112(n+1), A361822(n+1)]`
-/

namespace A106111.P7961136052937292140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P7961136052937292140

/-! ## A106111.P13100298262648262969

`∩[A106112(n+1), A380906(n+1)]`
-/

namespace A106111.P13100298262648262969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P13100298262648262969

/-! ## A106111.P12438857810799061714

`∩[A106112(n+1), A386323(n+1)]`
-/

namespace A106111.P12438857810799061714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P12438857810799061714

/-! ## A106111.P10714759653813701235

`∩[A106112(n+1), A386331(n+1)]`
-/

namespace A106111.P10714759653813701235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P10714759653813701235

/-! ## A106111.P14550144609410888043

`∩[A106112(n+1), A386345(n+1)]`
-/

namespace A106111.P14550144609410888043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P14550144609410888043

/-! ## A106111.P9551037009508128487

`∩[A106114(n+1), A386345(n+1)]`
-/

namespace A106111.P9551037009508128487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106111.P9551037009508128487

/-!
# A106112: Primes with minimal digit > 4.

The programs for A106112, there is no canonical definition to state claims against.
-/

/-! ## A106112.P16744481305449233912

`∪[A106105(n+1), A106111(n+1)]`
-/

namespace A106112.P16744481305449233912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P16744481305449233912

/-! ## A106112.P6414310147046375199

`∩[A106114(n+1), A386330(n+1)]`
-/

namespace A106112.P6414310147046375199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P6414310147046375199

/-! ## A106112.P3932070332728706758

`∩[A106114(n+1), A386340(n+1)]`
-/

namespace A106112.P3932070332728706758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P3932070332728706758

/-! ## A106112.P17757392027984092222

`∩[A106115(n+1), A386340(n+1)]`
-/

namespace A106112.P17757392027984092222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P17757392027984092222

/-! ## A106112.P17593367753563607810

`A045344(lt[4, A060420(n+1)])`
-/

namespace A106112.P17593367753563607810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106112.P17593367753563607810

/-! ## A106112.P16594725402404864466

`A065091(lt[2, A060420(n+1)-2])`
-/

namespace A106112.P16594725402404864466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106112.P16594725402404864466

/-! ## A106112.P12513386065189258542

`∩[A038612(n+1), A106114(n+1)]`
-/

namespace A106112.P12513386065189258542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P12513386065189258542

/-! ## A106112.P4475597061170919880

`∩[A106114(n+1), A386322(n+1)]`
-/

namespace A106112.P4475597061170919880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P4475597061170919880

/-! ## A106112.P10977561881236001727

`∩[A106114(n+1), A386336(n+1)]`
-/

namespace A106112.P10977561881236001727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106112.P10977561881236001727

/-! ## A106112.P8532094948790706914

`p?[record[A106746(n)]]`
-/

namespace A106112.P8532094948790706914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106112.P8532094948790706914

/-!
# A106113: 5th diagonal of triangle in A059317.

The programs for A106113, the canonical program `A106113.P11610153362142102578` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106113 has offset 0).

The definition of A106113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106113.P11610153362142102578

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=8, a(5)=29, a(6)=72, a(7)=146`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106113

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11610153362142102578.Spec : Prop :=
  ∀ n, P11610153362142102578.a n = A106113 n

theorem P11610153362142102578.correct : P11610153362142102578.Spec := by
  intro n
  simp only [A106113]

end A106113

/-!
# A106114: Primes with minimal digit > 3.

The programs for A106114, there is no canonical definition to state claims against.
-/

/-! ## A106114.P9398477654023083881

`∪[A106104(n+1), A106112(n+1)]`
-/

namespace A106114.P9398477654023083881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P9398477654023083881

/-! ## A106114.P15972589994336573258

`∩[A038611(n+1), A106115(n+1)]`
-/

namespace A106114.P15972589994336573258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P15972589994336573258

/-! ## A106114.P7260696557275545472

`∩[A106115(n+1), A386329(n+1)]`
-/

namespace A106114.P7260696557275545472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P7260696557275545472

/-! ## A106114.P2530201862676090079

`∩[A106115(n+1), A386335(n+1)]`
-/

namespace A106114.P2530201862676090079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P2530201862676090079

/-! ## A106114.P13061106776613213831

`∩[A106116(n+1), A386335(n+1)]`
-/

namespace A106114.P13061106776613213831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P13061106776613213831

/-! ## A106114.P1181785118518835640

`∩[A106115(n+1), A386321(n+1)]`
-/

namespace A106114.P1181785118518835640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P1181785118518835640

/-! ## A106114.P3175097320375961427

`∩[A386321(n+1), A386328(n+1)]`
-/

namespace A106114.P3175097320375961427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P3175097320375961427

/-! ## A106114.P10855587278900379129

`A045344(lt[1, A060420(n+1)-2])`
-/

namespace A106114.P10855587278900379129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106114.P10855587278900379129

/-! ## A106114.P10787618330843149083

`A065091(lt[1, A060420(n+1)-2])`
-/

namespace A106114.P10787618330843149083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106114.P10787618330843149083

/-! ## A106114.P14408769603466118924

`∩[A386320(n+1), A386329(n+1)]`
-/

namespace A106114.P14408769603466118924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P14408769603466118924

/-! ## A106114.P8997629161091497642

`A000040(eq[A171013(n+1), A171018(n+1)]+1)`
-/

namespace A106114.P8997629161091497642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A106114.P8997629161091497642

/-! ## A106114.P7856088187164613165

`A000040(eq[A171015(n+1), A171016(n+1)]+1)`
-/

namespace A106114.P7856088187164613165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A106114.P7856088187164613165

/-! ## A106114.P4378111423636255777

`A171013(eq[A171013(n+1), A171018(n+1)]+1)`
-/

namespace A106114.P4378111423636255777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A106114.P4378111423636255777

/-! ## A106114.P3876562346178205159

`A171013(eq[A171015(n+1), A171016(n+1)]+1)`
-/

namespace A106114.P3876562346178205159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A106114.P3876562346178205159

/-! ## A106114.P15706833656645910352

`A171015(eq[A171015(n+1), A171016(n+1)]+1)`
-/

namespace A106114.P15706833656645910352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171015 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A106114.P15706833656645910352

/-! ## A106114.P5803266242631203100

`∩[A039114(n+1), A106115(n+1)]`
-/

namespace A106114.P5803266242631203100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P5803266242631203100

/-! ## A106114.P14647187567352201752

`∩[A039121(n+1), A106115(n+1)]`
-/

namespace A106114.P14647187567352201752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P14647187567352201752

/-! ## A106114.P16125089016114048609

`∩[A039128(n+1), A106115(n+1)]`
-/

namespace A106114.P16125089016114048609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P16125089016114048609

/-! ## A106114.P2206000429345677587

`∩[A037344(n+1), A386335(n+1)]`
-/

namespace A106114.P2206000429345677587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106114.P2206000429345677587

/-!
# A106115: Primes with minimal digit > 2.

The programs for A106115, there is no canonical definition to state claims against.
-/

/-! ## A106115.P13942498206533528064

`∩[A038604(n+1), A106116(n+1)]`
-/

namespace A106115.P13942498206533528064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P13942498206533528064

/-! ## A106115.P16670979292876662488

`∪[A106103(n+1), A106114(n+1)]`
-/

namespace A106115.P16670979292876662488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P16670979292876662488

/-! ## A106115.P17974819416355975207

`∪[A106114(n+1), A155034(n+1)]`
-/

namespace A106115.P17974819416355975207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P17974819416355975207

/-! ## A106115.P1535273843112806269

`∩[A106116(n+1), A386328(n+1)]`
-/

namespace A106115.P1535273843112806269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P1535273843112806269

/-! ## A106115.P13041380049195902801

`∩[A038603(n+1), A386320(n+1)]`
-/

namespace A106115.P13041380049195902801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P13041380049195902801

/-! ## A106115.P9928357769146925148

`∩[A106116(n+1), A386320(n+1)]`
-/

namespace A106115.P9928357769146925148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P9928357769146925148

/-! ## A106115.P7106511535386349015

`∩[A386320(n+1), A386328(n+1)]`
-/

namespace A106115.P7106511535386349015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P7106511535386349015

/-! ## A106115.P5983809584391200967

`∩[A307636(n+1), A386320(n+1)]`
-/

namespace A106115.P5983809584391200967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P5983809584391200967

/-! ## A106115.P8849049227226918843

`A065091(lt[2, A060420(n+1)])`
-/

namespace A106115.P8849049227226918843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106115.P8849049227226918843

/-! ## A106115.P9435821770859560250

`A000040(lt[2, A060420(n+1)]+1)`
-/

namespace A106115.P9435821770859560250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A106115.P9435821770859560250

/-! ## A106115.P10806440429832662949

`∩[A038618(n+1), A386328(n+1)]`
-/

namespace A106115.P10806440429832662949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P10806440429832662949

/-! ## A106115.P11490575139427800830

`∩[A132080(n+1), A386320(n+1)]`
-/

namespace A106115.P11490575139427800830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P11490575139427800830

/-! ## A106115.P11793809043278043398

`∩[A195943(n+1), A386328(n+1)]`
-/

namespace A106115.P11793809043278043398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P11793809043278043398

/-! ## A106115.P11230180437110987218

`∩[A383749(n+1), A386320(n+1)]`
-/

namespace A106115.P11230180437110987218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P11230180437110987218

/-! ## A106115.P11029848297789739132

`∩[A037351(n+1), A386320(n+1)]`
-/

namespace A106115.P11029848297789739132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P11029848297789739132

/-! ## A106115.P3513127494535799858

`∩[A037344(n+1), A038604(n+1)]`
-/

namespace A106115.P3513127494535799858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P3513127494535799858

/-! ## A106115.P7375138738132913121

`∩[A037344(n+1), A386320(n+1)]`
-/

namespace A106115.P7375138738132913121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P7375138738132913121

/-! ## A106115.P8938292980244042956

`∩[A037344(n+1), A386328(n+1)]`
-/

namespace A106115.P8938292980244042956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106115.P8938292980244042956

/-!
# A106116: Primes without {0, 1} as digits.

The programs for A106116, there is no canonical definition to state claims against.
-/

/-! ## A106116.P2353438251176126425

`∪[A106102(n+1), A106115(n+1)]`
-/

namespace A106116.P2353438251176126425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P2353438251176126425

/-! ## A106116.P7717281208442330940

`A000040(lt[1, A060420(n+1)]+1)`
-/

namespace A106116.P7717281208442330940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A106116.P7717281208442330940

/-! ## A106116.P1443134657006335411

`∩[A038603(n+1), A038618(n+1)]`
-/

namespace A106116.P1443134657006335411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P1443134657006335411

/-! ## A106116.P7518245330878178913

`∩[A038618(n+1), A132080(n+1)]`
-/

namespace A106116.P7518245330878178913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P7518245330878178913

/-! ## A106116.P5734875086956694102

`∩[A038603(n+1), A195943(n+1)]`
-/

namespace A106116.P5734875086956694102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P5734875086956694102

/-! ## A106116.P4096129120447007550

`∩[A038618(n+1), A307636(n+1)]`
-/

namespace A106116.P4096129120447007550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P4096129120447007550

/-! ## A106116.P6629346775200716643

`p?[gcd(A001248(n+1), A171013(n+1))]`
-/

namespace A106116.P6629346775200716643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001248 (n + 1)) (A171013 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106116.P6629346775200716643

/-! ## A106116.P1417777346447200097

`A000040(eq[A000040(n+1), A171013(n+1)]+1)`
-/

namespace A106116.P1417777346447200097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A106116.P1417777346447200097

/-! ## A106116.P17108909595336741274

`∩[A038618(n+1), A383749(n+1)]`
-/

namespace A106116.P17108909595336741274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P17108909595336741274

/-! ## A106116.P10619543683596843146

`p?[A037344(n+1)]`
-/

namespace A106116.P10619543683596843146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106116.P10619543683596843146

/-! ## A106116.P4523108409646684319

`p?[A048379(A214678(n+1))]`
-/

namespace A106116.P4523108409646684319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A214678 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106116.P4523108409646684319

/-! ## A106116.P8789877342650019177

`filter[A037344(n+1), A010051(#)]`
-/

namespace A106116.P8789877342650019177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106116.P8789877342650019177

/-! ## A106116.P4069770087049642939

`∩[A000040(n+1), A037344(n+1)]`
-/

namespace A106116.P4069770087049642939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P4069770087049642939

/-! ## A106116.P3218864008729020452

`∩[A008578(n+1), A037344(n+1)]`
-/

namespace A106116.P3218864008729020452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P3218864008729020452

/-! ## A106116.P2013088712879571807

`∩[A037344(n+1), A038603(n+1)]`
-/

namespace A106116.P2013088712879571807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P2013088712879571807

/-! ## A106116.P8102928364180462052

`∩[A037344(n+1), A038618(n+1)]`
-/

namespace A106116.P8102928364180462052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P8102928364180462052

/-! ## A106116.P11016869610537772462

`∩[A037344(n+1), A040159(n+1)]`
-/

namespace A106116.P11016869610537772462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P11016869610537772462

/-! ## A106116.P11699585314533465505

`∩[A037344(n+1), A040161(n+1)]`
-/

namespace A106116.P11699585314533465505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106116.P11699585314533465505

/-!
# A106118: Primes with maximal digit > 1.

The programs for A106118, the canonical program `A106118.P5269121123413051575` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106118 has offset 1).

The definition of A106118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106118.P5269121123413051575

`p?[A136399(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A106118

/-- `p?[A136399(n+1)]` -/
def P5269121123413051575.Spec : Prop :=
  ∀ n, P5269121123413051575.a n = A106118 (n + 1)

theorem P5269121123413051575.correct : P5269121123413051575.Spec := by
  intro n
  simp only [A106118, Nat.add_sub_cancel]

end A106118

/-! ## A106118.P7389604339840973432

`filter[A136399(n+1), A010051(#)]`
-/

namespace A106118.P7389604339840973432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106118.P7389604339840973432

namespace A106118

/-- `filter[A136399(n+1), A010051(#)]` -/
def P7389604339840973432.Spec : Prop :=
  ∀ n, P7389604339840973432.a n = A106118 (n + 1)

end A106118

/-! ## A106118.P4769618941954984893

`∩[A000040(n+1), A136399(n+1)]`
-/

namespace A106118.P4769618941954984893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106118.P4769618941954984893

namespace A106118

/-- `∩[A000040(n+1), A136399(n+1)]` -/
def P4769618941954984893.Spec : Prop :=
  ∀ n, (P4769618941954984893.a n : ℤ) = A106118 (n + 1)

end A106118

/-! ## A106118.P7227897467008435746

`∩[A008578(n+1), A136399(n+1)]`
-/

namespace A106118.P7227897467008435746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106118.P7227897467008435746

namespace A106118

/-- `∩[A008578(n+1), A136399(n+1)]` -/
def P7227897467008435746.Spec : Prop :=
  ∀ n, (P7227897467008435746.a n : ℤ) = A106118 (n + 1)

end A106118

/-! ## A106118.P1237972532386156036

`∩[A136399(n+1), A158611(n+1)]`
-/

namespace A106118.P1237972532386156036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106118.P1237972532386156036

namespace A106118

/-- `∩[A136399(n+1), A158611(n+1)]` -/
def P1237972532386156036.Spec : Prop :=
  ∀ n, (P1237972532386156036.a n : ℤ) = A106118 (n + 1)

end A106118

/-! ## A106118.P3966964503895956351

`∩[A136399(n+1), A182986(n+1)]`
-/

namespace A106118.P3966964503895956351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106118.P3966964503895956351

namespace A106118

/-- `∩[A136399(n+1), A182986(n+1)]` -/
def P3966964503895956351.Spec : Prop :=
  ∀ n, (P3966964503895956351.a n : ℤ) = A106118 (n + 1)

end A106118

/-! ## A106118.P9011724006631061330

`filter[A136399(n+1), A080339(#)]`
-/

namespace A106118.P9011724006631061330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A106118.P9011724006631061330

namespace A106118

/-- `filter[A136399(n+1), A080339(#)]` -/
def P9011724006631061330.Spec : Prop :=
  ∀ n, P9011724006631061330.a n = A106118 (n + 1)

end A106118

/-! ## A106118.P5156013769252050155

`eq[A052010(A052010(n)), A284464(n)]`
-/

namespace A106118.P5156013769252050155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052010 (A052010 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106118.P5156013769252050155

namespace A106118

/-- `eq[A052010(A052010(n)), A284464(n)]` -/
def P5156013769252050155.Spec : Prop :=
  ∀ n, (P5156013769252050155.a n : ℤ) = A106118 (n + 1)

end A106118

/-! ## A106118.P2058919786511278365

`eq[A052010(A052010(n)), A284839(n)]`
-/

namespace A106118.P2058919786511278365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052010 (A052010 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284839 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106118.P2058919786511278365

namespace A106118

/-- `eq[A052010(A052010(n)), A284839(n)]` -/
def P2058919786511278365.Spec : Prop :=
  ∀ n, (P2058919786511278365.a n : ℤ) = A106118 (n + 1)

end A106118

/-! ## A106118.P5383877623268778071

`∪[A087594(n), A178209(n+1)]`
-/

namespace A106118.P5383877623268778071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106118.P5383877623268778071

namespace A106118

/-- `∪[A087594(n), A178209(n+1)]` -/
def P5383877623268778071.Spec : Prop :=
  ∀ n, (P5383877623268778071.a n : ℤ) = A106118 (n + 1)

end A106118

/-!
# A106119: Primes with maximal digit > 2.

The programs for A106119, there is no canonical definition to state claims against.
-/

/-! ## A106119.P6037091369157478385

`∪[A106099(n+1), A106120(n+1)]`
-/

namespace A106119.P6037091369157478385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106119.P6037091369157478385

/-! ## A106119.P10628335929248663686

`∪[A106120(n+1), A212525(n+1)]`
-/

namespace A106119.P10628335929248663686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106119.P10628335929248663686

/-! ## A106119.P5335403037263510506

`p?[comp[A007090(A023717(n))]]`
-/

namespace A106119.P5335403037263510506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023717 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106119.P5335403037263510506

/-! ## A106119.P10757135050959443924

`p?[lt[2, A054055(n)]]`
-/

namespace A106119.P10757135050959443924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106119.P10757135050959443924

/-! ## A106119.P16196115943110009698

`p?[lt[1, n*A176407(n)]]`
-/

namespace A106119.P16196115943110009698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176407 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106119.P16196115943110009698

/-! ## A106119.P10029562947078648705

`p?[(n+1)%A181060(n+1)]`
-/

namespace A106119.P10029562947078648705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A181060 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106119.P10029562947078648705

/-! ## A106119.P2928972564159420551

`p?[lt[0, A176407(A026741(n))]]`
-/

namespace A106119.P2928972564159420551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 (A026741 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106119.P2928972564159420551

/-!
# A106120: Primes with maximal digit > 3.

The programs for A106120, there is no canonical definition to state claims against.
-/

/-! ## A106120.P474905589637819704

`∪[A106098(n+1), A106121(n+1)]`
-/

namespace A106120.P474905589637819704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106120.P474905589637819704

/-! ## A106120.P212797056903924096

`∪[A106121(n+1), A133765(n+1)]`
-/

namespace A106120.P212797056903924096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106120.P212797056903924096

/-! ## A106120.P5020157808649395149

`∪[A106121(n+1), A284290(n+1)]`
-/

namespace A106120.P5020157808649395149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106120.P5020157808649395149

/-! ## A106120.P3721789651057943924

`p?[comp[A007090(n)]]`
-/

namespace A106120.P3721789651057943924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106120.P3721789651057943924

/-! ## A106120.P5978478270527312791

`p?[lt[3, A054055(n)]]`
-/

namespace A106120.P5978478270527312791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106120.P5978478270527312791

/-! ## A106120.P8478917293111577267

`p?[lt[16, A086066(n)]]`
-/

namespace A106120.P8478917293111577267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106120.P8478917293111577267

/-! ## A106120.P6792828186658111916

`p?[lt[0, n*A102673(n)]]`
-/

namespace A106120.P6792828186658111916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102673 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106120.P6792828186658111916

/-! ## A106120.P1758093094007538846

`p?[lt[3*n, A048385(n)]]`
-/

namespace A106120.P1758093094007538846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048385 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106120.P1758093094007538846

/-! ## A106120.P3609171682271625510

`p?[(n+1)*A083898(n+1)]`
-/

namespace A106120.P3609171682271625510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106120.P3609171682271625510

/-! ## A106120.P17450540847740025784

`p?[(n+1)%A334914(n+1)]`
-/

namespace A106120.P17450540847740025784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A334914 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106120.P17450540847740025784

/-! ## A106120.P8231310552595136941

`∪[A106121(n+1), A329106(n+1)]`
-/

namespace A106120.P8231310552595136941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106120.P8231310552595136941

/-! ## A106120.P6775278075473214559

`p?[n*A052423(A008486(n))²]`
-/

namespace A106120.P6775278075473214559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052423 (A008486 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106120.P6775278075473214559

/-! ## A106120.P10487290795482899115

`p?[n*gcd(n, A132387(n))]`
-/

namespace A106120.P10487290795482899115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (n : ℤ) (A132387 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106120.P10487290795482899115

/-!
# A106121: Primes with maximal digit > 4.

The programs for A106121, there is no canonical definition to state claims against.
-/

/-! ## A106121.P13972693008398480980

`∪[A106097(n+1), A106122(n+1)]`
-/

namespace A106121.P13972693008398480980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106121.P13972693008398480980

/-! ## A106121.P7744025059819105428

`∪[A106122(n+1), A257667(n+1)]`
-/

namespace A106121.P7744025059819105428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106121.P7744025059819105428

/-! ## A106121.P5743920005569806687

`p?[comp[A007091(n)]]`
-/

namespace A106121.P5743920005569806687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106121.P5743920005569806687

/-! ## A106121.P14308050825147763709

`record[A020639(comp[A007091(n)])]`
-/

namespace A106121.P14308050825147763709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106121.P14308050825147763709

/-! ## A106121.P503394641916981824

`record[A006530(A007958(n+1))]`
-/

namespace A106121.P503394641916981824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106121.P503394641916981824

/-! ## A106121.P7318084162884872615

`p?[lt[4, A054055(n)]]`
-/

namespace A106121.P7318084162884872615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106121.P7318084162884872615

/-! ## A106121.P2799803215885461279

`p?[lt[A167831(n), n]]`
-/

namespace A106121.P2799803215885461279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106121.P2799803215885461279

/-! ## A106121.P12217612689739261289

`record[A006530(A161598(n+1))]`
-/

namespace A106121.P12217612689739261289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161598 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106121.P12217612689739261289

/-!
# A106122: Primes with maximal digit > 5.

The programs for A106122, there is no canonical definition to state claims against.
-/

/-! ## A106122.P7508345791408750824

`∪[A106096(n+1), A106123(n+1)]`
-/

namespace A106122.P7508345791408750824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106122.P7508345791408750824

/-! ## A106122.P5225884689810581933

`p?[comp[A007092(n)]]`
-/

namespace A106122.P5225884689810581933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106122.P5225884689810581933

/-! ## A106122.P6046776348492731473

`p?[lt[5, A054055(n)]]`
-/

namespace A106122.P6046776348492731473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106122.P6046776348492731473

/-! ## A106122.P15587494364409528007

`p?[n*ceil(acot(A102677(n)))%2]`
-/

namespace A106122.P15587494364409528007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ⌈SequenceMachineLib.acot (A102677 n : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106122.P15587494364409528007

/-! ## A106122.P10426592978206795142

`lt[A082023(n), A102677(n)]`
-/

namespace A106122.P10426592978206795142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106122.P10426592978206795142

/-! ## A106122.P3697251035382940757

`record[A014963(comp[A007092(n)]+1)]`
-/

namespace A106122.P3697251035382940757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106122.P3697251035382940757

/-! ## A106122.P14837857247190534079

`eq[0, A293813(n)^A102677(n)]`
-/

namespace A106122.P14837857247190534079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293813 n : ℚ) ^ (A102677 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A106122.P14837857247190534079

/-! ## A106122.P18185411991672106222

`p?[comp[A222216(A001729(n+1))]]`
-/

namespace A106122.P18185411991672106222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 (A001729 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106122.P18185411991672106222

/-!
# A106123: Primes with maximal digit > 6.

The programs for A106123, there is no canonical definition to state claims against.
-/

/-! ## A106123.P5219817989775281182

`∪[A106095(n+1), A106124(n+1)]`
-/

namespace A106123.P5219817989775281182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106123.P5219817989775281182

/-! ## A106123.P2071087066912666625

`∪[A106124(n+1), A257668(n+1)]`
-/

namespace A106123.P2071087066912666625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106123.P2071087066912666625

/-! ## A106123.P8863840567038195001

`p?[comp[A007093(n)]]`
-/

namespace A106123.P8863840567038195001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106123.P8863840567038195001

/-! ## A106123.P6956613992317013173

`record[A006530(comp[A007093(n)])]`
-/

namespace A106123.P6956613992317013173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106123.P6956613992317013173

/-! ## A106123.P10496544270705451931

`record[A020639(comp[A007093(n)])]`
-/

namespace A106123.P10496544270705451931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106123.P10496544270705451931

/-! ## A106123.P7723205920036107908

`p?[lt[6, A054055(n)]]`
-/

namespace A106123.P7723205920036107908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106123.P7723205920036107908

/-! ## A106123.P580461234688271860

`p?[(n+1)%(A102679(n+1)+n+1)]`
-/

namespace A106123.P580461234688271860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A102679 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106123.P580461234688271860

/-! ## A106123.P12365191315329941850

`record[A014963(comp[A007093(n)])]`
-/

namespace A106123.P12365191315329941850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106123.P12365191315329941850

/-! ## A106123.P16484767485485785158

`lt[1, A055671(n)*A102679(n)]`
-/

namespace A106123.P16484767485485785158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n * A102679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106123.P16484767485485785158

/-! ## A106123.P216041661360804120

`p?[n*A156960(a(A102679(n)))]` with `a(0)=1`
-/

namespace A106123.P216041661360804120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) * A156960 (f1 (A102679 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106123.P216041661360804120

/-!
# A106124: Primes with maximal digit > 7.

The programs for A106124, there is no canonical definition to state claims against.
-/

/-! ## A106124.P12943741197777729281

`∩[A106123(n+1), A155070(n+1)]`
-/

namespace A106124.P12943741197777729281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P12943741197777729281

/-! ## A106124.P9499187402222366517

`p?[comp[A007094(n)]]`
-/

namespace A106124.P9499187402222366517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106124.P9499187402222366517

/-! ## A106124.P400470562919129567

`p?[A057104(n+1)]`
-/

namespace A106124.P400470562919129567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106124.P400470562919129567

/-! ## A106124.P1411013396649016001

`record[A006530(A057104(n+4))]`
-/

namespace A106124.P1411013396649016001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057104 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106124.P1411013396649016001

/-! ## A106124.P1410476796360334199

`filter[A057104(n+1), A010051(#)]`
-/

namespace A106124.P1410476796360334199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106124.P1410476796360334199

/-! ## A106124.P12436794805094798367

`filter[A057104(2*(n+1)), A323152(#)]`
-/

namespace A106124.P12436794805094798367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A106124.P12436794805094798367

/-! ## A106124.P4414442625174926000

`filter[A057104(2*(n+1)), A323153(#)]`
-/

namespace A106124.P4414442625174926000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A106124.P4414442625174926000

/-! ## A106124.P18258802800469022980

`filter[A057104(2*(n+1)), A340371(#)]`
-/

namespace A106124.P18258802800469022980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A106124.P18258802800469022980

/-! ## A106124.P857522997287024906

`filter[A057104(2*(n+1)), A353670(#)]`
-/

namespace A106124.P857522997287024906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A106124.P857522997287024906

/-! ## A106124.P6085179472858304147

`∩[A000040(n+1), A057104(n+1)]`
-/

namespace A106124.P6085179472858304147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P6085179472858304147

/-! ## A106124.P2598132230997206456

`∩[A004139(n+1), A057104(n+1)]`
-/

namespace A106124.P2598132230997206456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P2598132230997206456

/-! ## A106124.P5460716613536089207

`∩[A006005(n+1), A057104(n+1)]`
-/

namespace A106124.P5460716613536089207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P5460716613536089207

/-! ## A106124.P6789680378483229970

`∩[A008578(n+1), A057104(n+1)]`
-/

namespace A106124.P6789680378483229970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P6789680378483229970

/-! ## A106124.P12935157893576818932

`∩[A045319(n+1), A057104(n+1)]`
-/

namespace A106124.P12935157893576818932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P12935157893576818932

/-! ## A106124.P11074769104553042599

`∩[A045344(n+1), A057104(n+1)]`
-/

namespace A106124.P11074769104553042599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P11074769104553042599

/-! ## A106124.P10471398622150137744

`∩[A046022(n+1), A057104(n+1)]`
-/

namespace A106124.P10471398622150137744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P10471398622150137744

/-! ## A106124.P2315750090255689040

`∩[A051948(n+1), A057104(n+1)]`
-/

namespace A106124.P2315750090255689040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P2315750090255689040

/-! ## A106124.P3165046572140190049

`∩[A057104(n+1), A065091(n+1)]`
-/

namespace A106124.P3165046572140190049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106124.P3165046572140190049

/-!
# A106125: Numbers k such that k divides the k-th semiprime.

The programs for A106125, there is no canonical definition to state claims against.
-/

/-! ## A106125.P16655183049861490096

`A357741(n+1)/A356764(n+1)`
-/

namespace A106125.P16655183049861490096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357741 (n + 1) : ℚ) / (A356764 (n + 1) : ℚ)

end

end A106125.P16655183049861490096

/-!
# A106126: Numbers k such that k-th semiprime == 1 (mod k).

The programs for A106126, there is no canonical definition to state claims against.
-/

/-! ## A106126.P1066739678740512583

`eq[n, A131848(n+1)]+1`
-/

namespace A106126.P1066739678740512583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106126.P1066739678740512583

/-! ## A106126.P14479216153471933318

`eq[3, A175708(n+1)-2*n]+1`
-/

namespace A106126.P14479216153471933318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106126.P14479216153471933318

/-! ## A106126.P18438220977319015766

`eq[n+1, A174956(3*n+4)]+1`
-/

namespace A106126.P18438220977319015766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106126.P18438220977319015766

/-! ## A106126.P7455446352207622833

`eq[3*n+1, A001358(abs(1-n)+1)]`
-/

namespace A106126.P7455446352207622833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106126.P7455446352207622833

/-! ## A106126.P6624645826680532172

`eq[1, 3*n+5-A001358(n+1)]+1`
-/

namespace A106126.P6624645826680532172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 5 : ℤ) - A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106126.P6624645826680532172

/-!
# A106127: Numbers k such that k-th semiprime == 2 (mod k).

The programs for A106127, there is no canonical definition to state claims against.
-/

/-! ## A106127.P17359742147831640798

`A072000(A356755(n+1))`
-/

namespace A106127.P17359742147831640798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A356755 (n + 1)).toNat

end

end A106127.P17359742147831640798

/-!
# A106128: Numbers k such that the k-th semiprime == 3 (mod k).

The programs for A106128, there is no canonical definition to state claims against.
-/

/-! ## A106128.P16721524593824948235

`A072000(A357807(n+1))`
-/

namespace A106128.P16721524593824948235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A357807 (n + 1)).toNat

end

end A106128.P16721524593824948235

/-!
# A106129: Numbers k such that the k-th semiprime == 4 (mod k).

The programs for A106129, there is no canonical definition to state claims against.
-/

/-! ## A106129.P7105053149769501086

`A058933(A357808(n+1))`
-/

namespace A106129.P7105053149769501086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A357808 (n + 1)).toNat

end

end A106129.P7105053149769501086

/-!
# A106130: Numbers k such that k-th semiprime == 5 (mod k).

The programs for A106130, there is no canonical definition to state claims against.
-/

/-! ## A106130.P16866683973579737602

`A072000(A357023(n+1))`
-/

namespace A106130.P16866683973579737602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A357023 (n + 1)).toNat

end

end A106130.P16866683973579737602

/-!
# A106131: Numbers k such that the k-th semiprime == 6 (mod k).

The programs for A106131, there is no canonical definition to state claims against.
-/

/-! ## A106131.P18218155636029491056

`A072000(A356135(n+1))`
-/

namespace A106131.P18218155636029491056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A356135 (n + 1)).toNat

end

end A106131.P18218155636029491056

/-!
# A106132: Numbers k such that the k-th semiprime == 7 (mod k).

The programs for A106132, there is no canonical definition to state claims against.
-/

/-! ## A106132.P12673205237082083076

`A072000(A356357(n+1))`
-/

namespace A106132.P12673205237082083076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A356357 (n + 1)).toNat

end

end A106132.P12673205237082083076

/-!
# A106136: Numbers k such that the k-th semiprime == 11 (mod k).

The programs for A106136, there is no canonical definition to state claims against.
-/

/-! ## A106136.P6359954337235588923

`A160780(n+1)-A099551(A160768(n))`
-/

namespace A106136.P6359954337235588923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160780 (n + 1) - A099551 (A160768 n).toNat

end

end A106136.P6359954337235588923

/-!
# A106137: N-th semiprime mod n.

The programs for A106137, the canonical program `A106137.P8983848219571593236` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106137 has offset 1).

The definition of A106137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106137.P3480999588127918958

`A001358(n+1)%(n+1)`
-/

namespace A106137.P3480999588127918958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) (n + 1 : ℤ)

end

end A106137.P3480999588127918958

namespace A106137

/-- `A001358(n+1)%(n+1)` -/
def P3480999588127918958.Spec : Prop :=
  ∀ n, P3480999588127918958.a n = A106137 (n + 1)

end A106137

/-! ## A106137.P8983848219571593236

`A100493(n+1)%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A106137

/-- `A100493(n+1)%(n+1)` -/
def P8983848219571593236.Spec : Prop :=
  ∀ n, P8983848219571593236.a n = A106137 (n + 1)

theorem P8983848219571593236.correct : P8983848219571593236.Spec := by
  intro n
  simp only [A106137, Nat.add_sub_cancel]

end A106137

/-! ## A106137.P7679607847557221326

`A175708(n+1)%(n+1)`
-/

namespace A106137.P7679607847557221326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175708 (n + 1)) (n + 1 : ℤ)

end

end A106137.P7679607847557221326

namespace A106137

/-- `A175708(n+1)%(n+1)` -/
def P7679607847557221326.Spec : Prop :=
  ∀ n, P7679607847557221326.a n = A106137 (n + 1)

end A106137

/-! ## A106137.P12200795366264302266

`(A186621(n+1)+1)%(n+1)`
-/

namespace A106137.P12200795366264302266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186621 (n + 1) + 1) (n + 1 : ℤ)

end

end A106137.P12200795366264302266

namespace A106137

/-- `(A186621(n+1)+1)%(n+1)` -/
def P12200795366264302266.Spec : Prop :=
  ∀ n, P12200795366264302266.a n = A106137 (n + 1)

end A106137

/-! ## A106137.P11188353104531854730

`(eq[2, A001222(n+1)]+1)%(n+1)`
-/

namespace A106137.P11188353104531854730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % (n + 1)

end

end A106137.P11188353104531854730

namespace A106137

/-- `(eq[2, A001222(n+1)]+1)%(n+1)` -/
def P11188353104531854730.Spec : Prop :=
  ∀ n, (P11188353104531854730.a n : ℤ) = A106137 (n + 1)

end A106137

/-! ## A106137.P17558372948222786147

`A176540(n+2)%(n+1)`
-/

namespace A106137.P17558372948222786147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) (n + 1 : ℤ)

end

end A106137.P17558372948222786147

namespace A106137

/-- `A176540(n+2)%(n+1)` -/
def P17558372948222786147.Spec : Prop :=
  ∀ n, P17558372948222786147.a n = A106137 (n + 1)

end A106137

/-! ## A106137.P8987316100383347135

`A129767(2*(n+1))%(n+1)`
-/

namespace A106137.P8987316100383347135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) (n + 1 : ℤ)

end

end A106137.P8987316100383347135

namespace A106137

/-- `A129767(2*(n+1))%(n+1)` -/
def P8987316100383347135.Spec : Prop :=
  ∀ n, P8987316100383347135.a n = A106137 (n + 1)

end A106137

/-! ## A106137.P2981849742667409735

`eq[2, ∑{e}[n, #]]%(n+1)`
-/

namespace A106137.P2981849742667409735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % (n + 1)

end

end A106137.P2981849742667409735

namespace A106137

/-- `eq[2, ∑{e}[n, #]]%(n+1)` -/
def P2981849742667409735.Spec : Prop :=
  ∀ n, (P2981849742667409735.a n : ℤ) = A106137 (n + 1)

end A106137

/-! ## A106137.P133754464193279476

`lt[1, A105700(n)]%(n+1)`
-/

namespace A106137.P133754464193279476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % (n + 1)

end

end A106137.P133754464193279476

namespace A106137

/-- `lt[1, A105700(n)]%(n+1)` -/
def P133754464193279476.Spec : Prop :=
  ∀ n, (P133754464193279476.a n : ℤ) = A106137 (n + 1)

end A106137

/-! ## A106137.P10648113448594923447

`eq[2, A226378(n)]%(n+1)`
-/

namespace A106137.P10648113448594923447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1)

end

end A106137.P10648113448594923447

namespace A106137

/-- `eq[2, A226378(n)]%(n+1)` -/
def P10648113448594923447.Spec : Prop :=
  ∀ n, (P10648113448594923447.a n : ℤ) = A106137 (n + 1)

end A106137

/-! ## A106137.P2068505244736602954

`eq[2, A001222(A028310(n))]%(n+1)`
-/

namespace A106137.P2068505244736602954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1)

end

end A106137.P2068505244736602954

namespace A106137

/-- `eq[2, A001222(A028310(n))]%(n+1)` -/
def P2068505244736602954.Spec : Prop :=
  ∀ n, (P2068505244736602954.a n : ℤ) = A106137 (n + 1)

end A106137

/-! ## A106137.P15197724771500034483

`eq[3, A001222(A004277(n))]%(n+1)`
-/

namespace A106137.P15197724771500034483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1)

end

end A106137.P15197724771500034483

namespace A106137

/-- `eq[3, A001222(A004277(n))]%(n+1)` -/
def P15197724771500034483.Spec : Prop :=
  ∀ n, (P15197724771500034483.a n : ℤ) = A106137 (n + 1)

end A106137

/-!
# A106138: Semiprimes (mod 2).

The programs for A106138, the canonical program `A106138.P1314688240599968597` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106138 has offset 1).

The definition of A106138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106138.P1314688240599968597

`A001358(n+1)%2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106138

/-- `A001358(n+1)%2` -/
def P1314688240599968597.Spec : Prop :=
  ∀ n, P1314688240599968597.a n = A106138 (n + 1)

theorem P1314688240599968597.correct : P1314688240599968597.Spec := by
  intro n
  simp only [A106138, Nat.add_sub_cancel]

end A106138

/-! ## A106138.P15444204846195273950

`A074985(n+1)%2`
-/

namespace A106138.P15444204846195273950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074985 (n + 1)) 2

end

end A106138.P15444204846195273950

namespace A106138

/-- `A074985(n+1)%2` -/
def P15444204846195273950.Spec : Prop :=
  ∀ n, P15444204846195273950.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P6638901773621313028

`A076343(n+1)%2`
-/

namespace A106138.P6638901773621313028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076343 (n + 1)) 2

end

end A106138.P6638901773621313028

namespace A106138

/-- `A076343(n+1)%2` -/
def P6638901773621313028.Spec : Prop :=
  ∀ n, P6638901773621313028.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P7353074571653962564

`A084126(n+1)%2`
-/

namespace A106138.P7353074571653962564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084126 (n + 1)) 2

end

end A106138.P7353074571653962564

namespace A106138

/-- `A084126(n+1)%2` -/
def P7353074571653962564.Spec : Prop :=
  ∀ n, P7353074571653962564.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P16453663280969246425

`A106140(n+1)%2`
-/

namespace A106138.P16453663280969246425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106140 (n + 1)) 2

end

end A106138.P16453663280969246425

namespace A106138

/-- `A106140(n+1)%2` -/
def P16453663280969246425.Spec : Prop :=
  ∀ n, P16453663280969246425.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P3611074262947068815

`A106142(n+1)%2`
-/

namespace A106138.P3611074262947068815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106142 (n + 1)) 2

end

end A106138.P3611074262947068815

namespace A106138

/-- `A106142(n+1)%2` -/
def P3611074262947068815.Spec : Prop :=
  ∀ n, P3611074262947068815.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P7296539051279448760

`A106144(n+1)%2`
-/

namespace A106138.P7296539051279448760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106144 (n + 1)) 2

end

end A106138.P7296539051279448760

namespace A106138

/-- `A106144(n+1)%2` -/
def P7296539051279448760.Spec : Prop :=
  ∀ n, P7296539051279448760.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P4624376579215900049

`A106146(n+1)%2`
-/

namespace A106138.P4624376579215900049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106146 (n + 1)) 2

end

end A106138.P4624376579215900049

namespace A106138

/-- `A106146(n+1)%2` -/
def P4624376579215900049.Spec : Prop :=
  ∀ n, P4624376579215900049.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P7032341085115330451

`A106555(n+1)%2`
-/

namespace A106138.P7032341085115330451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106555 (n + 1)) 2

end

end A106138.P7032341085115330451

namespace A106138

/-- `A106555(n+1)%2` -/
def P7032341085115330451.Spec : Prop :=
  ∀ n, P7032341085115330451.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P13009063500784344312

`A122466(n+1)%2`
-/

namespace A106138.P13009063500784344312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122466 (n + 1)) 2

end

end A106138.P13009063500784344312

namespace A106138

/-- `A122466(n+1)%2` -/
def P13009063500784344312.Spec : Prop :=
  ∀ n, P13009063500784344312.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P15840866099576156892

`A175511(n+1)%2`
-/

namespace A106138.P15840866099576156892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175511 (n + 1)) 2

end

end A106138.P15840866099576156892

namespace A106138

/-- `A175511(n+1)%2` -/
def P15840866099576156892.Spec : Prop :=
  ∀ n, P15840866099576156892.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P11093028572315932360

`gcd(2, A088707(n+1))-1`
-/

namespace A106138.P11093028572315932360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A088707 (n + 1)) : ℤ) - 1

end

end A106138.P11093028572315932360

namespace A106138

/-- `gcd(2, A088707(n+1))-1` -/
def P11093028572315932360.Spec : Prop :=
  ∀ n, P11093028572315932360.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P18421783199212131770

`eq[2, A001222(n+2)]%2`
-/

namespace A106138.P18421783199212131770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A106138.P18421783199212131770

namespace A106138

/-- `eq[2, A001222(n+2)]%2` -/
def P18421783199212131770.Spec : Prop :=
  ∀ n, (P18421783199212131770.a n : ℤ) = A106138 (n + 1)

end A106138

/-! ## A106138.P11844307970058473922

`and(1, eq[2, A001222(n+4)])`
-/

namespace A106138.P11844307970058473922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106138.P11844307970058473922

namespace A106138

/-- `and(1, eq[2, A001222(n+4)])` -/
def P11844307970058473922.Spec : Prop :=
  ∀ n, (P11844307970058473922.a n : ℤ) = A106138 (n + 1)

end A106138

/-! ## A106138.P18061978819363879616

`1-round(acot(A338912(n+1)))`
-/

namespace A106138.P18061978819363879616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (SequenceMachineLib.acot (A338912 (n + 1) : ℝ))

end

end A106138.P18061978819363879616

namespace A106138

/-- `1-round(acot(A338912(n+1)))` -/
def P18061978819363879616.Spec : Prop :=
  ∀ n, P18061978819363879616.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P12191522226839767428

`p?[ceil(n/A006530(n+1))]%2`
-/

namespace A106138.P12191522226839767428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A006530 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A106138.P12191522226839767428

namespace A106138

/-- `p?[ceil(n/A006530(n+1))]%2` -/
def P12191522226839767428.Spec : Prop :=
  ∀ n, P12191522226839767428.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P4589088161324911887

`eq[4, a(A001222(n))²]%2` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A106138.P4589088161324911887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f2 =>
  f2 (A001222 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 2

end

end A106138.P4589088161324911887

namespace A106138

/-- `eq[4, a(A001222(n))²]%2` -/
def P4589088161324911887.Spec : Prop :=
  ∀ n, (P4589088161324911887.a n : ℤ) = A106138 (n + 1)

end A106138

/-! ## A106138.P17347323002176319754

`(eq[2, A001222(abs(C(2, n)-n))]%2)²`
-/

namespace A106138.P17347323002176319754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2) ^ 2

end

end A106138.P17347323002176319754

namespace A106138

/-- `(eq[2, A001222(abs(C(2, n)-n))]%2)²` -/
def P17347323002176319754.Spec : Prop :=
  ∀ n, (P17347323002176319754.a n : ℤ) = A106138 (n + 1)

end A106138

/-! ## A106138.P14295531625280061570

`A000035(A084126(n+1))`
-/

namespace A106138.P14295531625280061570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A084126 (n + 1)).toNat

end

end A106138.P14295531625280061570

namespace A106138

/-- `A000035(A084126(n+1))` -/
def P14295531625280061570.Spec : Prop :=
  ∀ n, P14295531625280061570.a n = A106138 (n + 1)

end A106138

/-! ## A106138.P17255777811442909457

`A353480(A001358(n+1))`
-/

namespace A106138.P17255777811442909457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (A001358 (n + 1)).toNat

end

end A106138.P17255777811442909457

namespace A106138

/-- `A353480(A001358(n+1))` -/
def P17255777811442909457.Spec : Prop :=
  ∀ n, P17255777811442909457.a n = A106138 (n + 1)

end A106138

/-!
# A106139: Semiprimes (mod 3).

The programs for A106139, the canonical program `A106139.P13038782540806826284` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106139 has offset 1).

The definition of A106139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106139.P10200835190421634883

`A001358(n+1)%3`
-/

namespace A106139.P10200835190421634883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 3

end

end A106139.P10200835190421634883

namespace A106139

/-- `A001358(n+1)%3` -/
def P10200835190421634883.Spec : Prop :=
  ∀ n, P10200835190421634883.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P15514049830181181483

`A106142(n+1)%3`
-/

namespace A106139.P15514049830181181483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106142 (n + 1)) 3

end

end A106139.P15514049830181181483

namespace A106139

/-- `A106142(n+1)%3` -/
def P15514049830181181483.Spec : Prop :=
  ∀ n, P15514049830181181483.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P14342708930505981092

`A106145(n+1)%3`
-/

namespace A106139.P14342708930505981092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106145 (n + 1)) 3

end

end A106139.P14342708930505981092

namespace A106139

/-- `A106145(n+1)%3` -/
def P14342708930505981092.Spec : Prop :=
  ∀ n, P14342708930505981092.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P8312446359120178477

`A175013(n+1)%3`
-/

namespace A106139.P8312446359120178477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175013 (n + 1)) 3

end

end A106139.P8312446359120178477

namespace A106139

/-- `A175013(n+1)%3` -/
def P8312446359120178477.Spec : Prop :=
  ∀ n, P8312446359120178477.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P7972948451130666740

`A210616(n+1)%3`
-/

namespace A106139.P7972948451130666740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210616 (n + 1)) 3

end

end A106139.P7972948451130666740

namespace A106139

/-- `A210616(n+1)%3` -/
def P7972948451130666740.Spec : Prop :=
  ∀ n, P7972948451130666740.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P6602594164775770196

`sqrt(A074985(n+1))%3`
-/

namespace A106139.P6602594164775770196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))) 3

end

end A106139.P6602594164775770196

namespace A106139

/-- `sqrt(A074985(n+1))%3` -/
def P6602594164775770196.Spec : Prop :=
  ∀ n, P6602594164775770196.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P13038782540806826284

`(A088707(n+1)-1)%3`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106139

/-- `(A088707(n+1)-1)%3` -/
def P13038782540806826284.Spec : Prop :=
  ∀ n, P13038782540806826284.a n = A106139 (n + 1)

theorem P13038782540806826284.correct : P13038782540806826284.Spec := by
  intro n
  simp only [A106139, Nat.add_sub_cancel]

end A106139

/-! ## A106139.P370574333733744201

`(A075818(n+1)/2)%3`
-/

namespace A106139.P370574333733744201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)) 3

end

end A106139.P370574333733744201

namespace A106139

/-- `(A075818(n+1)/2)%3` -/
def P370574333733744201.Spec : Prop :=
  ∀ n, P370574333733744201.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P16728704910038419285

`eq[2, A001222(n+3)]%3`
-/

namespace A106139.P16728704910038419285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 3

end

end A106139.P16728704910038419285

namespace A106139

/-- `eq[2, A001222(n+3)]%3` -/
def P16728704910038419285.Spec : Prop :=
  ∀ n, (P16728704910038419285.a n : ℤ) = A106139 (n + 1)

end A106139

/-! ## A106139.P10095868634352787986

`record[n/a(A001222(n))]%3` with `a(0)=4, a(1)=2`
-/

namespace A106139.P10095868634352787986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 3

end

end A106139.P10095868634352787986

namespace A106139

/-- `record[n/a(A001222(n))]%3` -/
def P10095868634352787986.Spec : Prop :=
  ∀ n, P10095868634352787986.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P10956177370141470902

`(eq[2, A001222(-xor(n, -1))]-2)%3`
-/

namespace A106139.P10956177370141470902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2) 3

end

end A106139.P10956177370141470902

namespace A106139

/-- `(eq[2, A001222(-xor(n, -1))]-2)%3` -/
def P10956177370141470902.Spec : Prop :=
  ∀ n, P10956177370141470902.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P587857876527364930

`A010872(A175013(n+1))`
-/

namespace A106139.P587857876527364930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A175013 (n + 1)).toNat

end

end A106139.P587857876527364930

namespace A106139

/-- `A010872(A175013(n+1))` -/
def P587857876527364930.Spec : Prop :=
  ∀ n, P587857876527364930.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P8279116331532916804

`A176540(n+2)%3`
-/

namespace A106139.P8279116331532916804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) 3

end

end A106139.P8279116331532916804

namespace A106139

/-- `A176540(n+2)%3` -/
def P8279116331532916804.Spec : Prop :=
  ∀ n, P8279116331532916804.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P6768243313217897904

`A129767(2*(n+1))%3`
-/

namespace A106139.P6768243313217897904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) 3

end

end A106139.P6768243313217897904

namespace A106139

/-- `A129767(2*(n+1))%3` -/
def P6768243313217897904.Spec : Prop :=
  ∀ n, P6768243313217897904.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P3836399137918015264

`(7*eq[2, ∑{e}[n, #]])%3`
-/

namespace A106139.P3836399137918015264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 3

end

end A106139.P3836399137918015264

namespace A106139

/-- `(7*eq[2, ∑{e}[n, #]])%3` -/
def P3836399137918015264.Spec : Prop :=
  ∀ n, (P3836399137918015264.a n : ℤ) = A106139 (n + 1)

end A106139

/-! ## A106139.P17590815733777634958

`eq[2, A105700(n)]%3`
-/

namespace A106139.P17590815733777634958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 3

end

end A106139.P17590815733777634958

namespace A106139

/-- `eq[2, A105700(n)]%3` -/
def P17590815733777634958.Spec : Prop :=
  ∀ n, (P17590815733777634958.a n : ℤ) = A106139 (n + 1)

end A106139

/-! ## A106139.P11755880659321228060

`eq[2, A226378(n)]%3`
-/

namespace A106139.P11755880659321228060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 3

end

end A106139.P11755880659321228060

namespace A106139

/-- `eq[2, A226378(n)]%3` -/
def P11755880659321228060.Spec : Prop :=
  ∀ n, (P11755880659321228060.a n : ℤ) = A106139 (n + 1)

end A106139

/-! ## A106139.P17688807210839835042

`eq[2, A284289(n)]%3`
-/

namespace A106139.P17688807210839835042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 3

end

end A106139.P17688807210839835042

namespace A106139

/-- `eq[2, A284289(n)]%3` -/
def P17688807210839835042.Spec : Prop :=
  ∀ n, (P17688807210839835042.a n : ℤ) = A106139 (n + 1)

end A106139

/-! ## A106139.P8097465112535243176

`A010872(A001358(n+1))`
-/

namespace A106139.P8097465112535243176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A001358 (n + 1)).toNat

end

end A106139.P8097465112535243176

namespace A106139

/-- `A010872(A001358(n+1))` -/
def P8097465112535243176.Spec : Prop :=
  ∀ n, P8097465112535243176.a n = A106139 (n + 1)

end A106139

/-! ## A106139.P3541272625605287060

`A010872(A210616(n+1))`
-/

namespace A106139.P3541272625605287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A210616 (n + 1)).toNat

end

end A106139.P3541272625605287060

namespace A106139

/-- `A010872(A210616(n+1))` -/
def P3541272625605287060.Spec : Prop :=
  ∀ n, P3541272625605287060.a n = A106139 (n + 1)

end A106139

/-!
# A106140: Semiprimes (mod 4).

The programs for A106140, the canonical program `A106140.P18154026766219863721` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106140 has offset 1).

The definition of A106140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106140.P1302995504013927824

`A001358(n+1)%4`
-/

namespace A106140.P1302995504013927824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 4

end

end A106140.P1302995504013927824

namespace A106140

/-- `A001358(n+1)%4` -/
def P1302995504013927824.Spec : Prop :=
  ∀ n, P1302995504013927824.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P17716968920147491133

`A106144(n+1)%4`
-/

namespace A106140.P17716968920147491133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106144 (n + 1)) 4

end

end A106140.P17716968920147491133

namespace A106140

/-- `A106144(n+1)%4` -/
def P17716968920147491133.Spec : Prop :=
  ∀ n, P17716968920147491133.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P11046666470790154185

`A122466(n+1)%4`
-/

namespace A106140.P11046666470790154185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122466 (n + 1)) 4

end

end A106140.P11046666470790154185

namespace A106140

/-- `A122466(n+1)%4` -/
def P11046666470790154185.Spec : Prop :=
  ∀ n, P11046666470790154185.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P18154026766219863721

`and(3, A088707(n+1)-1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106140

/-- `and(3, A088707(n+1)-1)` -/
def P18154026766219863721.Spec : Prop :=
  ∀ n, P18154026766219863721.a n = A106140 (n + 1)

theorem P18154026766219863721.correct : P18154026766219863721.Spec := by
  intro n
  simp only [A106140, Nat.add_sub_cancel]

end A106140

/-! ## A106140.P1948078647908379431

`eq[2, A001222(n+4)]%4`
-/

namespace A106140.P1948078647908379431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 4

end

end A106140.P1948078647908379431

namespace A106140

/-- `eq[2, A001222(n+4)]%4` -/
def P1948078647908379431.Spec : Prop :=
  ∀ n, (P1948078647908379431.a n : ℤ) = A106140 (n + 1)

end A106140

/-! ## A106140.P8715118783781828311

`and(3, eq[2, A001222(n+1)]+1)`
-/

namespace A106140.P8715118783781828311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106140.P8715118783781828311

namespace A106140

/-- `and(3, eq[2, A001222(n+1)]+1)` -/
def P8715118783781828311.Spec : Prop :=
  ∀ n, (P8715118783781828311.a n : ℤ) = A106140 (n + 1)

end A106140

/-! ## A106140.P10515391535552958245

`record[n/a(A001222(n))]%4` with `a(0)=4, a(1)=2`
-/

namespace A106140.P10515391535552958245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 4

end

end A106140.P10515391535552958245

namespace A106140

/-- `record[n/a(A001222(n))]%4` -/
def P10515391535552958245.Spec : Prop :=
  ∀ n, P10515391535552958245.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P5430379207843545284

`A010873(A001358(n+1))`
-/

namespace A106140.P5430379207843545284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A001358 (n + 1)).toNat

end

end A106140.P5430379207843545284

namespace A106140

/-- `A010873(A001358(n+1))` -/
def P5430379207843545284.Spec : Prop :=
  ∀ n, P5430379207843545284.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P16623839802926328044

`and(3, A001358(A000027(n+1)))`
-/

namespace A106140.P16623839802926328044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001358 (A000027 (n + 1)).toNat)

end

end A106140.P16623839802926328044

namespace A106140

/-- `and(3, A001358(A000027(n+1)))` -/
def P16623839802926328044.Spec : Prop :=
  ∀ n, P16623839802926328044.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P12871839347928352220

`and(A001538(n), A106144(n+1))`
-/

namespace A106140.P12871839347928352220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001538 n) (A106144 (n + 1))

end

end A106140.P12871839347928352220

namespace A106140

/-- `and(A001538(n), A106144(n+1))` -/
def P12871839347928352220.Spec : Prop :=
  ∀ n, P12871839347928352220.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P8465896970490292527

`and(A001539(n), A106144(n+1))`
-/

namespace A106140.P8465896970490292527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A106144 (n + 1))

end

end A106140.P8465896970490292527

namespace A106140

/-- `and(A001539(n), A106144(n+1))` -/
def P8465896970490292527.Spec : Prop :=
  ∀ n, P8465896970490292527.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P2559861328152964168

`and(A002148(n), A106144(n+1))`
-/

namespace A106140.P2559861328152964168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002148 n) (A106144 (n + 1))

end

end A106140.P2559861328152964168

namespace A106140

/-- `and(A002148(n), A106144(n+1))` -/
def P2559861328152964168.Spec : Prop :=
  ∀ n, P2559861328152964168.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P6997967439994949738

`and(A004769(n), A106144(n+1))`
-/

namespace A106140.P6997967439994949738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004769 n) (A106144 (n + 1))

end

end A106140.P6997967439994949738

namespace A106140

/-- `and(A004769(n), A106144(n+1))` -/
def P6997967439994949738.Spec : Prop :=
  ∀ n, P6997967439994949738.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P15280645664688773328

`and(A017101(n), A106144(n+1))`
-/

namespace A106140.P15280645664688773328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017101 n) (A106144 (n + 1))

end

end A106140.P15280645664688773328

namespace A106140

/-- `and(A017101(n), A106144(n+1))` -/
def P15280645664688773328.Spec : Prop :=
  ∀ n, P15280645664688773328.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P10799302104706944478

`and(A017103(n), A106144(n+1))`
-/

namespace A106140.P10799302104706944478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017103 n) (A106144 (n + 1))

end

end A106140.P10799302104706944478

namespace A106140

/-- `and(A017103(n), A106144(n+1))` -/
def P10799302104706944478.Spec : Prop :=
  ∀ n, P10799302104706944478.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P1061416861562852497

`and(A017105(n), A106144(n+1))`
-/

namespace A106140.P1061416861562852497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017105 n) (A106144 (n + 1))

end

end A106140.P1061416861562852497

namespace A106140

/-- `and(A017105(n), A106144(n+1))` -/
def P1061416861562852497.Spec : Prop :=
  ∀ n, P1061416861562852497.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P9922829833083900138

`and(A001358(n+1), A122553(n))`
-/

namespace A106140.P9922829833083900138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001358 (n + 1)) (A122553 n)

end

end A106140.P9922829833083900138

namespace A106140

/-- `and(A001358(n+1), A122553(n))` -/
def P9922829833083900138.Spec : Prop :=
  ∀ n, P9922829833083900138.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P10112241715970846613

`and(A001358(n+1), A158799(n))`
-/

namespace A106140.P10112241715970846613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001358 (n + 1)) (A158799 n)

end

end A106140.P10112241715970846613

namespace A106140

/-- `and(A001358(n+1), A158799(n))` -/
def P10112241715970846613.Spec : Prop :=
  ∀ n, P10112241715970846613.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P2210444892007879319

`and(A066322(n), A106144(n+1))`
-/

namespace A106140.P2210444892007879319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066322 n) (A106144 (n + 1))

end

end A106140.P2210444892007879319

namespace A106140

/-- `and(A066322(n), A106144(n+1))` -/
def P2210444892007879319.Spec : Prop :=
  ∀ n, P2210444892007879319.a n = A106140 (n + 1)

end A106140

/-! ## A106140.P11916964717233197138

`and(A086760(n), A106144(n+1))`
-/

namespace A106140.P11916964717233197138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086760 n) (A106144 (n + 1))

end

end A106140.P11916964717233197138

namespace A106140

/-- `and(A086760(n), A106144(n+1))` -/
def P11916964717233197138.Spec : Prop :=
  ∀ n, P11916964717233197138.a n = A106140 (n + 1)

end A106140

/-!
# A106141: Semiprimes (mod 5).

The programs for A106141, the canonical program `A106141.P10095112070791450902` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106141 has offset 1).

The definition of A106141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106141.P9487176650606678097

`A001358(n+1)%5`
-/

namespace A106141.P9487176650606678097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 5

end

end A106141.P9487176650606678097

namespace A106141

/-- `A001358(n+1)%5` -/
def P9487176650606678097.Spec : Prop :=
  ∀ n, P9487176650606678097.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P4444726740545095900

`A106146(n+1)%5`
-/

namespace A106141.P4444726740545095900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106146 (n + 1)) 5

end

end A106141.P4444726740545095900

namespace A106141

/-- `A106146(n+1)%5` -/
def P4444726740545095900.Spec : Prop :=
  ∀ n, P4444726740545095900.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P14340973035014937420

`sqrt(A074985(n+1))%5`
-/

namespace A106141.P14340973035014937420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))) 5

end

end A106141.P14340973035014937420

namespace A106141

/-- `sqrt(A074985(n+1))%5` -/
def P14340973035014937420.Spec : Prop :=
  ∀ n, P14340973035014937420.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P10095112070791450902

`(A088707(n+1)-1)%5`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106141

/-- `(A088707(n+1)-1)%5` -/
def P10095112070791450902.Spec : Prop :=
  ∀ n, P10095112070791450902.a n = A106141 (n + 1)

theorem P10095112070791450902.correct : P10095112070791450902.Spec := by
  intro n
  simp only [A106141, Nat.add_sub_cancel]

end A106141

/-! ## A106141.P1691456291730946954

`(eq[2, A001222(n+1)]+1)%5`
-/

namespace A106141.P1691456291730946954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 5

end

end A106141.P1691456291730946954

namespace A106141

/-- `(eq[2, A001222(n+1)]+1)%5` -/
def P1691456291730946954.Spec : Prop :=
  ∀ n, (P1691456291730946954.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P16075523824536707400

`record[n/a(A001222(n))]%5` with `a(0)=4, a(1)=2`
-/

namespace A106141.P16075523824536707400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 5

end

end A106141.P16075523824536707400

namespace A106141

/-- `record[n/a(A001222(n))]%5` -/
def P16075523824536707400.Spec : Prop :=
  ∀ n, P16075523824536707400.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P13801505030390263089

`eq[2, A001222(gcd(n, C(2, n)))]%5`
-/

namespace A106141.P13801505030390263089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P13801505030390263089

namespace A106141

/-- `eq[2, A001222(gcd(n, C(2, n)))]%5` -/
def P13801505030390263089.Spec : Prop :=
  ∀ n, (P13801505030390263089.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P18158007519188905337

`eq[2, A001222(abs(C(2, n)-n))]%5`
-/

namespace A106141.P18158007519188905337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P18158007519188905337

namespace A106141

/-- `eq[2, A001222(abs(C(2, n)-n))]%5` -/
def P18158007519188905337.Spec : Prop :=
  ∀ n, (P18158007519188905337.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P16735835725709608930

`(eq[2, A000005((n+1)/A006530(n+1))]+1)%5`
-/

namespace A106141.P16735835725709608930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 5

end

end A106141.P16735835725709608930

namespace A106141

/-- `(eq[2, A000005((n+1)/A006530(n+1))]+1)%5` -/
def P16735835725709608930.Spec : Prop :=
  ∀ n, (P16735835725709608930.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P8405662205537988551

`A176540(n+2)%5`
-/

namespace A106141.P8405662205537988551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) 5

end

end A106141.P8405662205537988551

namespace A106141

/-- `A176540(n+2)%5` -/
def P8405662205537988551.Spec : Prop :=
  ∀ n, P8405662205537988551.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P9430496675189736413

`A129767(2*(n+1))%5`
-/

namespace A106141.P9430496675189736413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) 5

end

end A106141.P9430496675189736413

namespace A106141

/-- `A129767(2*(n+1))%5` -/
def P9430496675189736413.Spec : Prop :=
  ∀ n, P9430496675189736413.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P17948860318426692328

`lt[(2-∑{e}[n, #])², 1]%5`
-/

namespace A106141.P17948860318426692328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n % 5

end

end A106141.P17948860318426692328

namespace A106141

/-- `lt[(2-∑{e}[n, #])², 1]%5` -/
def P17948860318426692328.Spec : Prop :=
  ∀ n, (P17948860318426692328.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P1159685822849714436

`lt[1, A105700(n)]%5`
-/

namespace A106141.P1159685822849714436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 5

end

end A106141.P1159685822849714436

namespace A106141

/-- `lt[1, A105700(n)]%5` -/
def P1159685822849714436.Spec : Prop :=
  ∀ n, (P1159685822849714436.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P10196982486165428087

`eq[2, A226378(n)]%5`
-/

namespace A106141.P10196982486165428087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P10196982486165428087

namespace A106141

/-- `eq[2, A226378(n)]%5` -/
def P10196982486165428087.Spec : Prop :=
  ∀ n, (P10196982486165428087.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P12504637985206549913

`eq[2, A284289(n)]%5`
-/

namespace A106141.P12504637985206549913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P12504637985206549913

namespace A106141

/-- `eq[2, A284289(n)]%5` -/
def P12504637985206549913.Spec : Prop :=
  ∀ n, (P12504637985206549913.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P4240823791514122279

`A010874(A001358(n+1))`
-/

namespace A106141.P4240823791514122279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A001358 (n + 1)).toNat

end

end A106141.P4240823791514122279

namespace A106141

/-- `A010874(A001358(n+1))` -/
def P4240823791514122279.Spec : Prop :=
  ∀ n, P4240823791514122279.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P13377897348923113087

`A010874(A176540(n+2))`
-/

namespace A106141.P13377897348923113087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A176540 (n + 2)).toNat

end

end A106141.P13377897348923113087

namespace A106141

/-- `A010874(A176540(n+2))` -/
def P13377897348923113087.Spec : Prop :=
  ∀ n, P13377897348923113087.a n = A106141 (n + 1)

end A106141

/-! ## A106141.P5458157567465523351

`eq[3, A001222(A004277(n))]%5`
-/

namespace A106141.P5458157567465523351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P5458157567465523351

namespace A106141

/-- `eq[3, A001222(A004277(n))]%5` -/
def P5458157567465523351.Spec : Prop :=
  ∀ n, (P5458157567465523351.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P4991834728938462036

`eq[3, A001222(A008486(n))]%5`
-/

namespace A106141.P4991834728938462036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P4991834728938462036

namespace A106141

/-- `eq[3, A001222(A008486(n))]%5` -/
def P4991834728938462036.Spec : Prop :=
  ∀ n, (P4991834728938462036.a n : ℤ) = A106141 (n + 1)

end A106141

/-! ## A106141.P1666821451583098562

`eq[3, A001222(A008706(n))]%5`
-/

namespace A106141.P1666821451583098562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 5

end

end A106141.P1666821451583098562

namespace A106141

/-- `eq[3, A001222(A008706(n))]%5` -/
def P1666821451583098562.Spec : Prop :=
  ∀ n, (P1666821451583098562.a n : ℤ) = A106141 (n + 1)

end A106141

/-!
# A106142: Semiprimes (mod 6).

The programs for A106142, the canonical program `A106142.P8402219048278858874` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106142 has offset 1).

The definition of A106142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106142.P8507418137722312941

`A001358(n+1)%6`
-/

namespace A106142.P8507418137722312941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 6

end

end A106142.P8507418137722312941

namespace A106142

/-- `A001358(n+1)%6` -/
def P8507418137722312941.Spec : Prop :=
  ∀ n, P8507418137722312941.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P9836703821930756514

`sqrt(A074985(n+1))%6`
-/

namespace A106142.P9836703821930756514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))) 6

end

end A106142.P9836703821930756514

namespace A106142

/-- `sqrt(A074985(n+1))%6` -/
def P9836703821930756514.Spec : Prop :=
  ∀ n, P9836703821930756514.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P8402219048278858874

`(A088707(n+1)-1)%6`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106142

/-- `(A088707(n+1)-1)%6` -/
def P8402219048278858874.Spec : Prop :=
  ∀ n, P8402219048278858874.a n = A106142 (n + 1)

theorem P8402219048278858874.correct : P8402219048278858874.Spec := by
  intro n
  simp only [A106142, Nat.add_sub_cancel]

end A106142

/-! ## A106142.P10948223871700880446

`(A075818(n+1)/2)%6`
-/

namespace A106142.P10948223871700880446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)) 6

end

end A106142.P10948223871700880446

namespace A106142

/-- `(A075818(n+1)/2)%6` -/
def P10948223871700880446.Spec : Prop :=
  ∀ n, P10948223871700880446.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P7316611802724759286

`(eq[2, A001222(n+1)]+1)%6`
-/

namespace A106142.P7316611802724759286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 6

end

end A106142.P7316611802724759286

namespace A106142

/-- `(eq[2, A001222(n+1)]+1)%6` -/
def P7316611802724759286.Spec : Prop :=
  ∀ n, (P7316611802724759286.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P11007605449270258070

`record[n/a(A001222(n))]%6` with `a(0)=4, a(1)=2`
-/

namespace A106142.P11007605449270258070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 6

end

end A106142.P11007605449270258070

namespace A106142

/-- `record[n/a(A001222(n))]%6` -/
def P11007605449270258070.Spec : Prop :=
  ∀ n, P11007605449270258070.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P2089990324859846244

`eq[2, A001222(abs(C(2, n)-n))]%6`
-/

namespace A106142.P2089990324859846244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A106142.P2089990324859846244

namespace A106142

/-- `eq[2, A001222(abs(C(2, n)-n))]%6` -/
def P2089990324859846244.Spec : Prop :=
  ∀ n, (P2089990324859846244.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P12838432502763844959

`A010875(A001358(n+1))`
-/

namespace A106142.P12838432502763844959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A001358 (n + 1)).toNat

end

end A106142.P12838432502763844959

namespace A106142

/-- `A010875(A001358(n+1))` -/
def P12838432502763844959.Spec : Prop :=
  ∀ n, P12838432502763844959.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P10416149098932605070

`(eq[2, A000005((n+1)/A006530(n+1))]+1)%6`
-/

namespace A106142.P10416149098932605070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 6

end

end A106142.P10416149098932605070

namespace A106142

/-- `(eq[2, A000005((n+1)/A006530(n+1))]+1)%6` -/
def P10416149098932605070.Spec : Prop :=
  ∀ n, (P10416149098932605070.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P14371556248784322844

`A176540(n+2)%6`
-/

namespace A106142.P14371556248784322844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) 6

end

end A106142.P14371556248784322844

namespace A106142

/-- `A176540(n+2)%6` -/
def P14371556248784322844.Spec : Prop :=
  ∀ n, P14371556248784322844.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P14648123080665216954

`A010875(A176540(n+2))`
-/

namespace A106142.P14648123080665216954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A176540 (n + 2)).toNat

end

end A106142.P14648123080665216954

namespace A106142

/-- `A010875(A176540(n+2))` -/
def P14648123080665216954.Spec : Prop :=
  ∀ n, P14648123080665216954.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P4492634205391497372

`A129767(2*(n+1))%6`
-/

namespace A106142.P4492634205391497372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) 6

end

end A106142.P4492634205391497372

namespace A106142

/-- `A129767(2*(n+1))%6` -/
def P4492634205391497372.Spec : Prop :=
  ∀ n, P4492634205391497372.a n = A106142 (n + 1)

end A106142

/-! ## A106142.P15357584602855361955

`eq[2, ∑{e}[n, #]]%6`
-/

namespace A106142.P15357584602855361955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 6

end

end A106142.P15357584602855361955

namespace A106142

/-- `eq[2, ∑{e}[n, #]]%6` -/
def P15357584602855361955.Spec : Prop :=
  ∀ n, (P15357584602855361955.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P2227047527753911125

`lt[(2-∑{e}[n, #])², 1]%6`
-/

namespace A106142.P2227047527753911125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n % 6

end

end A106142.P2227047527753911125

namespace A106142

/-- `lt[(2-∑{e}[n, #])², 1]%6` -/
def P2227047527753911125.Spec : Prop :=
  ∀ n, (P2227047527753911125.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P3139330163806504464

`lt[1, A105700(n)]%6`
-/

namespace A106142.P3139330163806504464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 6

end

end A106142.P3139330163806504464

namespace A106142

/-- `lt[1, A105700(n)]%6` -/
def P3139330163806504464.Spec : Prop :=
  ∀ n, (P3139330163806504464.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P8244805820331233012

`eq[2, A226378(n)]%6`
-/

namespace A106142.P8244805820331233012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A106142.P8244805820331233012

namespace A106142

/-- `eq[2, A226378(n)]%6` -/
def P8244805820331233012.Spec : Prop :=
  ∀ n, (P8244805820331233012.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P14205932824727961318

`eq[2, A284289(n)]%6`
-/

namespace A106142.P14205932824727961318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A106142.P14205932824727961318

namespace A106142

/-- `eq[2, A284289(n)]%6` -/
def P14205932824727961318.Spec : Prop :=
  ∀ n, (P14205932824727961318.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P11552861962582255074

`eq[3, A001222(A004277(n))]%6`
-/

namespace A106142.P11552861962582255074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A106142.P11552861962582255074

namespace A106142

/-- `eq[3, A001222(A004277(n))]%6` -/
def P11552861962582255074.Spec : Prop :=
  ∀ n, (P11552861962582255074.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P15405457746176316797

`eq[3, A001222(A008486(n))]%6`
-/

namespace A106142.P15405457746176316797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A106142.P15405457746176316797

namespace A106142

/-- `eq[3, A001222(A008486(n))]%6` -/
def P15405457746176316797.Spec : Prop :=
  ∀ n, (P15405457746176316797.a n : ℤ) = A106142 (n + 1)

end A106142

/-! ## A106142.P5054399283433735185

`eq[3, A001222(A008706(n))]%6`
-/

namespace A106142.P5054399283433735185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 6

end

end A106142.P5054399283433735185

namespace A106142

/-- `eq[3, A001222(A008706(n))]%6` -/
def P5054399283433735185.Spec : Prop :=
  ∀ n, (P5054399283433735185.a n : ℤ) = A106142 (n + 1)

end A106142

/-!
# A106143: Semiprimes (mod 7).

The programs for A106143, the canonical program `A106143.P2557381599287858065` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106143 has offset 1).

The definition of A106143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106143.P6026532894659418399

`A001358(n+1)%7`
-/

namespace A106143.P6026532894659418399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 7

end

end A106143.P6026532894659418399

namespace A106143

/-- `A001358(n+1)%7` -/
def P6026532894659418399.Spec : Prop :=
  ∀ n, P6026532894659418399.a n = A106143 (n + 1)

end A106143

/-! ## A106143.P2557381599287858065

`sqrt(A074985(n+1))%7`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106143

/-- `sqrt(A074985(n+1))%7` -/
def P2557381599287858065.Spec : Prop :=
  ∀ n, P2557381599287858065.a n = A106143 (n + 1)

theorem P2557381599287858065.correct : P2557381599287858065.Spec := by
  intro n
  simp only [A106143, Nat.add_sub_cancel]

end A106143

/-! ## A106143.P6512665990674438667

`(eq[2, A001222(n+1)]+1)%7`
-/

namespace A106143.P6512665990674438667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 7

end

end A106143.P6512665990674438667

namespace A106143

/-- `(eq[2, A001222(n+1)]+1)%7` -/
def P6512665990674438667.Spec : Prop :=
  ∀ n, (P6512665990674438667.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P13013445070283746988

`record[n/a(A001222(n))]%7` with `a(0)=4, a(1)=2`
-/

namespace A106143.P13013445070283746988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 7

end

end A106143.P13013445070283746988

namespace A106143

/-- `record[n/a(A001222(n))]%7` -/
def P13013445070283746988.Spec : Prop :=
  ∀ n, P13013445070283746988.a n = A106143 (n + 1)

end A106143

/-! ## A106143.P4013662823958948218

`eq[2, A001222(abs(C(2, n)-n))]%7`
-/

namespace A106143.P4013662823958948218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P4013662823958948218

namespace A106143

/-- `eq[2, A001222(abs(C(2, n)-n))]%7` -/
def P4013662823958948218.Spec : Prop :=
  ∀ n, (P4013662823958948218.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P12773399846341136779

`(eq[2, A000005((n+1)/A006530(n+1))]+1)%7`
-/

namespace A106143.P12773399846341136779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 7

end

end A106143.P12773399846341136779

namespace A106143

/-- `(eq[2, A000005((n+1)/A006530(n+1))]+1)%7` -/
def P12773399846341136779.Spec : Prop :=
  ∀ n, (P12773399846341136779.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P358246350066026962

`(eq[2, A000005((n+1)/A020639(n+1))]+1)%7`
-/

namespace A106143.P358246350066026962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 7

end

end A106143.P358246350066026962

namespace A106143

/-- `(eq[2, A000005((n+1)/A020639(n+1))]+1)%7` -/
def P358246350066026962.Spec : Prop :=
  ∀ n, (P358246350066026962.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P14635538175232815171

`A176540(n+2)%7`
-/

namespace A106143.P14635538175232815171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) 7

end

end A106143.P14635538175232815171

namespace A106143

/-- `A176540(n+2)%7` -/
def P14635538175232815171.Spec : Prop :=
  ∀ n, P14635538175232815171.a n = A106143 (n + 1)

end A106143

/-! ## A106143.P14715019366882673204

`A129767(2*(n+1))%7`
-/

namespace A106143.P14715019366882673204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) 7

end

end A106143.P14715019366882673204

namespace A106143

/-- `A129767(2*(n+1))%7` -/
def P14715019366882673204.Spec : Prop :=
  ∀ n, P14715019366882673204.a n = A106143 (n + 1)

end A106143

/-! ## A106143.P12881198347115367731

`eq[2, ∑{e}[n, #]]%7`
-/

namespace A106143.P12881198347115367731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 7

end

end A106143.P12881198347115367731

namespace A106143

/-- `eq[2, ∑{e}[n, #]]%7` -/
def P12881198347115367731.Spec : Prop :=
  ∀ n, (P12881198347115367731.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P1201678381911573350

`lt[1, A105700(n)]%7`
-/

namespace A106143.P1201678381911573350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 7

end

end A106143.P1201678381911573350

namespace A106143

/-- `lt[1, A105700(n)]%7` -/
def P1201678381911573350.Spec : Prop :=
  ∀ n, (P1201678381911573350.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P10268723493394768167

`eq[2, A226378(n)]%7`
-/

namespace A106143.P10268723493394768167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P10268723493394768167

namespace A106143

/-- `eq[2, A226378(n)]%7` -/
def P10268723493394768167.Spec : Prop :=
  ∀ n, (P10268723493394768167.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P17546195194539108649

`eq[2, A284289(n)]%7`
-/

namespace A106143.P17546195194539108649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P17546195194539108649

namespace A106143

/-- `eq[2, A284289(n)]%7` -/
def P17546195194539108649.Spec : Prop :=
  ∀ n, (P17546195194539108649.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P16085432915034805241

`A010876(A001358(n+1))`
-/

namespace A106143.P16085432915034805241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A001358 (n + 1)).toNat

end

end A106143.P16085432915034805241

namespace A106143

/-- `A010876(A001358(n+1))` -/
def P16085432915034805241.Spec : Prop :=
  ∀ n, P16085432915034805241.a n = A106143 (n + 1)

end A106143

/-! ## A106143.P16495058280670262018

`A010876(A176540(n+2))`
-/

namespace A106143.P16495058280670262018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A176540 (n + 2)).toNat

end

end A106143.P16495058280670262018

namespace A106143

/-- `A010876(A176540(n+2))` -/
def P16495058280670262018.Spec : Prop :=
  ∀ n, P16495058280670262018.a n = A106143 (n + 1)

end A106143

/-! ## A106143.P18046199811511598614

`eq[2, A001222(A028310(n))]%7`
-/

namespace A106143.P18046199811511598614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P18046199811511598614

namespace A106143

/-- `eq[2, A001222(A028310(n))]%7` -/
def P18046199811511598614.Spec : Prop :=
  ∀ n, (P18046199811511598614.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P4978250112356434030

`eq[3, A001222(A004277(n))]%7`
-/

namespace A106143.P4978250112356434030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P4978250112356434030

namespace A106143

/-- `eq[3, A001222(A004277(n))]%7` -/
def P4978250112356434030.Spec : Prop :=
  ∀ n, (P4978250112356434030.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P16629990816859674503

`eq[3, A001222(A008486(n))]%7`
-/

namespace A106143.P16629990816859674503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P16629990816859674503

namespace A106143

/-- `eq[3, A001222(A008486(n))]%7` -/
def P16629990816859674503.Spec : Prop :=
  ∀ n, (P16629990816859674503.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P10157570044284772014

`eq[3, A001222(A008706(n))]%7`
-/

namespace A106143.P10157570044284772014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P10157570044284772014

namespace A106143

/-- `eq[3, A001222(A008706(n))]%7` -/
def P10157570044284772014.Spec : Prop :=
  ∀ n, (P10157570044284772014.a n : ℤ) = A106143 (n + 1)

end A106143

/-! ## A106143.P16106445754295870

`eq[4, A001222(A008458(n))]%7`
-/

namespace A106143.P16106445754295870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 7

end

end A106143.P16106445754295870

namespace A106143

/-- `eq[4, A001222(A008458(n))]%7` -/
def P16106445754295870.Spec : Prop :=
  ∀ n, (P16106445754295870.a n : ℤ) = A106143 (n + 1)

end A106143

/-!
# A106144: Semiprimes (mod 8).

The programs for A106144, the canonical program `A106144.P1547564960963844025` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106144 has offset 1).

The definition of A106144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106144.P16883606520367892647

`A001358(n+1)%8`
-/

namespace A106144.P16883606520367892647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 8

end

end A106144.P16883606520367892647

namespace A106144

/-- `A001358(n+1)%8` -/
def P16883606520367892647.Spec : Prop :=
  ∀ n, P16883606520367892647.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P15585140538006847192

`A122466(n+1)%8`
-/

namespace A106144.P15585140538006847192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122466 (n + 1)) 8

end

end A106144.P15585140538006847192

namespace A106144

/-- `A122466(n+1)%8` -/
def P15585140538006847192.Spec : Prop :=
  ∀ n, P15585140538006847192.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P13037234989717600940

`sqrt(A074985(n+1))%8`
-/

namespace A106144.P13037234989717600940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))) 8

end

end A106144.P13037234989717600940

namespace A106144

/-- `sqrt(A074985(n+1))%8` -/
def P13037234989717600940.Spec : Prop :=
  ∀ n, P13037234989717600940.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P1547564960963844025

`(A088707(n+1)-1)%8`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106144

/-- `(A088707(n+1)-1)%8` -/
def P1547564960963844025.Spec : Prop :=
  ∀ n, P1547564960963844025.a n = A106144 (n + 1)

theorem P1547564960963844025.correct : P1547564960963844025.Spec := by
  intro n
  simp only [A106144, Nat.add_sub_cancel]

end A106144

/-! ## A106144.P7892366318438099847

`(eq[2, A001222(n+1)]+1)%8`
-/

namespace A106144.P7892366318438099847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 8

end

end A106144.P7892366318438099847

namespace A106144

/-- `(eq[2, A001222(n+1)]+1)%8` -/
def P7892366318438099847.Spec : Prop :=
  ∀ n, (P7892366318438099847.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P4896936209644458087

`and(7, eq[2, A001222(n+2)]+2)`
-/

namespace A106144.P4896936209644458087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A106144.P4896936209644458087

namespace A106144

/-- `and(7, eq[2, A001222(n+2)]+2)` -/
def P4896936209644458087.Spec : Prop :=
  ∀ n, (P4896936209644458087.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P515093088212137966

`record[n/a(A001222(n))]%8` with `a(0)=4, a(1)=2`
-/

namespace A106144.P515093088212137966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 8

end

end A106144.P515093088212137966

namespace A106144

/-- `record[n/a(A001222(n))]%8` -/
def P515093088212137966.Spec : Prop :=
  ∀ n, P515093088212137966.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P6628767331662574320

`eq[2, A001222(abs(C(2, n)-n))]%8`
-/

namespace A106144.P6628767331662574320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P6628767331662574320

namespace A106144

/-- `eq[2, A001222(abs(C(2, n)-n))]%8` -/
def P6628767331662574320.Spec : Prop :=
  ∀ n, (P6628767331662574320.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P6756499940799200054

`A010877(A001358(n+1))`
-/

namespace A106144.P6756499940799200054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A001358 (n + 1)).toNat

end

end A106144.P6756499940799200054

namespace A106144

/-- `A010877(A001358(n+1))` -/
def P6756499940799200054.Spec : Prop :=
  ∀ n, P6756499940799200054.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P11672150047187870177

`A176540(n+2)%8`
-/

namespace A106144.P11672150047187870177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) 8

end

end A106144.P11672150047187870177

namespace A106144

/-- `A176540(n+2)%8` -/
def P11672150047187870177.Spec : Prop :=
  ∀ n, P11672150047187870177.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P9543469616646808019

`A010877(A176540(n+2))`
-/

namespace A106144.P9543469616646808019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A176540 (n + 2)).toNat

end

end A106144.P9543469616646808019

namespace A106144

/-- `A010877(A176540(n+2))` -/
def P9543469616646808019.Spec : Prop :=
  ∀ n, P9543469616646808019.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P3080194943690588922

`A129767(2*(n+1))%8`
-/

namespace A106144.P3080194943690588922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) 8

end

end A106144.P3080194943690588922

namespace A106144

/-- `A129767(2*(n+1))%8` -/
def P3080194943690588922.Spec : Prop :=
  ∀ n, P3080194943690588922.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P16185906792598144616

`lt[1, A105700(n)]%8`
-/

namespace A106144.P16185906792598144616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 8

end

end A106144.P16185906792598144616

namespace A106144

/-- `lt[1, A105700(n)]%8` -/
def P16185906792598144616.Spec : Prop :=
  ∀ n, (P16185906792598144616.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P11459083145855073183

`eq[2, A226378(n)]%8`
-/

namespace A106144.P11459083145855073183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P11459083145855073183

namespace A106144

/-- `eq[2, A226378(n)]%8` -/
def P11459083145855073183.Spec : Prop :=
  ∀ n, (P11459083145855073183.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P12859770271421928714

`eq[2, A284289(n)]%8`
-/

namespace A106144.P12859770271421928714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P12859770271421928714

namespace A106144

/-- `eq[2, A284289(n)]%8` -/
def P12859770271421928714.Spec : Prop :=
  ∀ n, (P12859770271421928714.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P2385290442263122493

`A010887(A186621(n+1))`
-/

namespace A106144.P2385290442263122493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (A186621 (n + 1)).toNat

end

end A106144.P2385290442263122493

namespace A106144

/-- `A010887(A186621(n+1))` -/
def P2385290442263122493.Spec : Prop :=
  ∀ n, P2385290442263122493.a n = A106144 (n + 1)

end A106144

/-! ## A106144.P13423660868626436495

`eq[3, A001222(A008486(n))]%8`
-/

namespace A106144.P13423660868626436495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P13423660868626436495

namespace A106144

/-- `eq[3, A001222(A008486(n))]%8` -/
def P13423660868626436495.Spec : Prop :=
  ∀ n, (P13423660868626436495.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P6016364107397430713

`eq[3, A001222(A008706(n))]%8`
-/

namespace A106144.P6016364107397430713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P6016364107397430713

namespace A106144

/-- `eq[3, A001222(A008706(n))]%8` -/
def P6016364107397430713.Spec : Prop :=
  ∀ n, (P6016364107397430713.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P12435594342934430292

`eq[4, A001222(A008458(n))]%8`
-/

namespace A106144.P12435594342934430292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P12435594342934430292

namespace A106144

/-- `eq[4, A001222(A008458(n))]%8` -/
def P12435594342934430292.Spec : Prop :=
  ∀ n, (P12435594342934430292.a n : ℤ) = A106144 (n + 1)

end A106144

/-! ## A106144.P15025855340048333652

`eq[4, A001222(A008574(n))]%8`
-/

namespace A106144.P15025855340048333652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 8

end

end A106144.P15025855340048333652

namespace A106144

/-- `eq[4, A001222(A008574(n))]%8` -/
def P15025855340048333652.Spec : Prop :=
  ∀ n, (P15025855340048333652.a n : ℤ) = A106144 (n + 1)

end A106144

/-!
# A106145: Semiprimes (mod 9).

The programs for A106145, the canonical program `A106145.P7641158567863875963` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106145 has offset 1).

The definition of A106145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106145.P10204434039049104032

`A001358(n+1)%9`
-/

namespace A106145.P10204434039049104032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 9

end

end A106145.P10204434039049104032

namespace A106145

/-- `A001358(n+1)%9` -/
def P10204434039049104032.Spec : Prop :=
  ∀ n, P10204434039049104032.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P4396153045213934709

`A175013(n+1)%9`
-/

namespace A106145.P4396153045213934709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175013 (n + 1)) 9

end

end A106145.P4396153045213934709

namespace A106145

/-- `A175013(n+1)%9` -/
def P4396153045213934709.Spec : Prop :=
  ∀ n, P4396153045213934709.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P11641119840130259634

`A210616(n+1)%9`
-/

namespace A106145.P11641119840130259634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210616 (n + 1)) 9

end

end A106145.P11641119840130259634

namespace A106145

/-- `A210616(n+1)%9` -/
def P11641119840130259634.Spec : Prop :=
  ∀ n, P11641119840130259634.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P7641158567863875963

`dr(A088707(n+1))-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106145

/-- `dr(A088707(n+1))-1` -/
def P7641158567863875963.Spec : Prop :=
  ∀ n, P7641158567863875963.a n = A106145 (n + 1)

theorem P7641158567863875963.correct : P7641158567863875963.Spec := by
  intro n
  simp only [A106145, Nat.add_sub_cancel]

end A106145

/-! ## A106145.P13882230916040040750

`sqrt(A074985(n+1))%9`
-/

namespace A106145.P13882230916040040750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))) 9

end

end A106145.P13882230916040040750

namespace A106145

/-- `sqrt(A074985(n+1))%9` -/
def P13882230916040040750.Spec : Prop :=
  ∀ n, P13882230916040040750.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P9880999455044360400

`(A075818(n+1)/2)%9`
-/

namespace A106145.P9880999455044360400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)) 9

end

end A106145.P9880999455044360400

namespace A106145

/-- `(A075818(n+1)/2)%9` -/
def P9880999455044360400.Spec : Prop :=
  ∀ n, P9880999455044360400.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P4134002283389862180

`(eq[2, A001222(n+1)]+1)%9`
-/

namespace A106145.P4134002283389862180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 9

end

end A106145.P4134002283389862180

namespace A106145

/-- `(eq[2, A001222(n+1)]+1)%9` -/
def P4134002283389862180.Spec : Prop :=
  ∀ n, (P4134002283389862180.a n : ℤ) = A106145 (n + 1)

end A106145

/-! ## A106145.P5271501400267323645

`(A175708(n+1)+n+1)%9`
-/

namespace A106145.P5271501400267323645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175708 (n + 1) + (n + 1 : ℤ)) 9

end

end A106145.P5271501400267323645

namespace A106145

/-- `(A175708(n+1)+n+1)%9` -/
def P5271501400267323645.Spec : Prop :=
  ∀ n, P5271501400267323645.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P13072992245475791731

`record[n/a(A001222(n))]%9` with `a(0)=4, a(1)=2`
-/

namespace A106145.P13072992245475791731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 9

end

end A106145.P13072992245475791731

namespace A106145

/-- `record[n/a(A001222(n))]%9` -/
def P13072992245475791731.Spec : Prop :=
  ∀ n, P13072992245475791731.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P4034230407660868722

`(∑[A065516(abs(1-n)+1)]+1)%9`
-/

namespace A106145.P4034230407660868722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) 9

end

end A106145.P4034230407660868722

namespace A106145

/-- `(∑[A065516(abs(1-n)+1)]+1)%9` -/
def P4034230407660868722.Spec : Prop :=
  ∀ n, P4034230407660868722.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P5100157558850351419

`A010878(A175013(n+1))`
-/

namespace A106145.P5100157558850351419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A175013 (n + 1)).toNat

end

end A106145.P5100157558850351419

namespace A106145

/-- `A010878(A175013(n+1))` -/
def P5100157558850351419.Spec : Prop :=
  ∀ n, P5100157558850351419.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P1072419452589872412

`A176540(n+2)%9`
-/

namespace A106145.P1072419452589872412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176540 (n + 2)) 9

end

end A106145.P1072419452589872412

namespace A106145

/-- `A176540(n+2)%9` -/
def P1072419452589872412.Spec : Prop :=
  ∀ n, P1072419452589872412.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P15796374726644387555

`A129767(2*(n+1))%9`
-/

namespace A106145.P15796374726644387555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * (n + 1))) 9

end

end A106145.P15796374726644387555

namespace A106145

/-- `A129767(2*(n+1))%9` -/
def P15796374726644387555.Spec : Prop :=
  ∀ n, P15796374726644387555.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P15661461755857248115

`lt[(2-∑{e}[n, #])², 1]%9`
-/

namespace A106145.P15661461755857248115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n % 9

end

end A106145.P15661461755857248115

namespace A106145

/-- `lt[(2-∑{e}[n, #])², 1]%9` -/
def P15661461755857248115.Spec : Prop :=
  ∀ n, (P15661461755857248115.a n : ℤ) = A106145 (n + 1)

end A106145

/-! ## A106145.P12374272578027809798

`lt[1, A105700(n)]%9`
-/

namespace A106145.P12374272578027809798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 9

end

end A106145.P12374272578027809798

namespace A106145

/-- `lt[1, A105700(n)]%9` -/
def P12374272578027809798.Spec : Prop :=
  ∀ n, (P12374272578027809798.a n : ℤ) = A106145 (n + 1)

end A106145

/-! ## A106145.P12508642653084873721

`eq[2, A226378(n)]%9`
-/

namespace A106145.P12508642653084873721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 9

end

end A106145.P12508642653084873721

namespace A106145

/-- `eq[2, A226378(n)]%9` -/
def P12508642653084873721.Spec : Prop :=
  ∀ n, (P12508642653084873721.a n : ℤ) = A106145 (n + 1)

end A106145

/-! ## A106145.P7252528516178110725

`eq[2, A284289(n)]%9`
-/

namespace A106145.P7252528516178110725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 9

end

end A106145.P7252528516178110725

namespace A106145

/-- `eq[2, A284289(n)]%9` -/
def P7252528516178110725.Spec : Prop :=
  ∀ n, (P7252528516178110725.a n : ℤ) = A106145 (n + 1)

end A106145

/-! ## A106145.P848345432757277814

`(eq[2, A001055(n+1)]+1)%9`
-/

namespace A106145.P848345432757277814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 9

end

end A106145.P848345432757277814

namespace A106145

/-- `(eq[2, A001055(n+1)]+1)%9` -/
def P848345432757277814.Spec : Prop :=
  ∀ n, (P848345432757277814.a n : ℤ) = A106145 (n + 1)

end A106145

/-! ## A106145.P11038698331291515625

`A010878(A001358(n+1))`
-/

namespace A106145.P11038698331291515625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A001358 (n + 1)).toNat

end

end A106145.P11038698331291515625

namespace A106145

/-- `A010878(A001358(n+1))` -/
def P11038698331291515625.Spec : Prop :=
  ∀ n, P11038698331291515625.a n = A106145 (n + 1)

end A106145

/-! ## A106145.P16765251047017966148

`A010878(A210616(n+1))`
-/

namespace A106145.P16765251047017966148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (A210616 (n + 1)).toNat

end

end A106145.P16765251047017966148

namespace A106145

/-- `A010878(A210616(n+1))` -/
def P16765251047017966148.Spec : Prop :=
  ∀ n, P16765251047017966148.a n = A106145 (n + 1)

end A106145

/-!
# A106146: Semiprimes (mod 10).

The programs for A106146, the canonical program `A106146.P11052717945320149159` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106146 has offset 1).

The definition of A106146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106146.P8985156728606200515

`A001358(n+1)%10`
-/

namespace A106146.P8985156728606200515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1)) 10

end

end A106146.P8985156728606200515

namespace A106146

/-- `A001358(n+1)%10` -/
def P8985156728606200515.Spec : Prop :=
  ∀ n, P8985156728606200515.a n = A106146 (n + 1)

end A106146

/-! ## A106146.P11052717945320149159

`(A088707(n+1)-1)%10`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106146

/-- `(A088707(n+1)-1)%10` -/
def P11052717945320149159.Spec : Prop :=
  ∀ n, P11052717945320149159.a n = A106146 (n + 1)

theorem P11052717945320149159.correct : P11052717945320149159.Spec := by
  intro n
  simp only [A106146, Nat.add_sub_cancel]

end A106146

/-! ## A106146.P4076156250045794030

`(A075818(n+1)/2)%10`
-/

namespace A106146.P4076156250045794030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)) 10

end

end A106146.P4076156250045794030

namespace A106146

/-- `(A075818(n+1)/2)%10` -/
def P4076156250045794030.Spec : Prop :=
  ∀ n, P4076156250045794030.a n = A106146 (n + 1)

end A106146

/-! ## A106146.P1917387530027348881

`(eq[1, A064911(n+1)]+1)%10`
-/

namespace A106146.P1917387530027348881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A106146.P1917387530027348881

namespace A106146

/-- `(eq[1, A064911(n+1)]+1)%10` -/
def P1917387530027348881.Spec : Prop :=
  ∀ n, (P1917387530027348881.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P12879357621223391418

`(eq[2, A001222(n+1)]+1)%10`
-/

namespace A106146.P12879357621223391418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A106146.P12879357621223391418

namespace A106146

/-- `(eq[2, A001222(n+1)]+1)%10` -/
def P12879357621223391418.Spec : Prop :=
  ∀ n, (P12879357621223391418.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P16983863101829816805

`A083786(A176193(n+1))`
-/

namespace A106146.P16983863101829816805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083786 (A176193 (n + 1)).toNat

end

end A106146.P16983863101829816805

namespace A106146

/-- `A083786(A176193(n+1))` -/
def P16983863101829816805.Spec : Prop :=
  ∀ n, P16983863101829816805.a n = A106146 (n + 1)

end A106146

/-! ## A106146.P8344112031512238669

`eq[2, A226378(n)]%10`
-/

namespace A106146.P8344112031512238669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A106146.P8344112031512238669

namespace A106146

/-- `eq[2, A226378(n)]%10` -/
def P8344112031512238669.Spec : Prop :=
  ∀ n, (P8344112031512238669.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P14257072662757597914

`(eq[2, Δ[A022559(n)]]+1)%10`
-/

namespace A106146.P14257072662757597914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A106146.P14257072662757597914

namespace A106146

/-- `(eq[2, Δ[A022559(n)]]+1)%10` -/
def P14257072662757597914.Spec : Prop :=
  ∀ n, (P14257072662757597914.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P12507249375653685703

`(eq[2, A001055(n+1)]+1)%10`
-/

namespace A106146.P12507249375653685703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A106146.P12507249375653685703

namespace A106146

/-- `(eq[2, A001055(n+1)]+1)%10` -/
def P12507249375653685703.Spec : Prop :=
  ∀ n, (P12507249375653685703.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P6672673138880488192

`(eq[2, A034836(n+1)]+1)%10`
-/

namespace A106146.P6672673138880488192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 10

end

end A106146.P6672673138880488192

namespace A106146

/-- `(eq[2, A034836(n+1)]+1)%10` -/
def P6672673138880488192.Spec : Prop :=
  ∀ n, (P6672673138880488192.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P4917558315751295968

`A010879(A001358(n+1))`
-/

namespace A106146.P4917558315751295968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A001358 (n + 1)).toNat

end

end A106146.P4917558315751295968

namespace A106146

/-- `A010879(A001358(n+1))` -/
def P4917558315751295968.Spec : Prop :=
  ∀ n, P4917558315751295968.a n = A106146 (n + 1)

end A106146

/-! ## A106146.P538484914003777326

`A010879(A176540(n+2))`
-/

namespace A106146.P538484914003777326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A176540 (n + 2)).toNat

end

end A106146.P538484914003777326

namespace A106146

/-- `A010879(A176540(n+2))` -/
def P538484914003777326.Spec : Prop :=
  ∀ n, P538484914003777326.a n = A106146 (n + 1)

end A106146

/-! ## A106146.P9401183783167116696

`A010879(A088707(n+1)-1)`
-/

namespace A106146.P9401183783167116696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A088707 (n + 1) - 1).toNat

end

end A106146.P9401183783167116696

namespace A106146

/-- `A010879(A088707(n+1)-1)` -/
def P9401183783167116696.Spec : Prop :=
  ∀ n, P9401183783167116696.a n = A106146 (n + 1)

end A106146

/-! ## A106146.P13600252575229212529

`eq[5, A001222(A234275(n))]%10`
-/

namespace A106146.P13600252575229212529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A106146.P13600252575229212529

namespace A106146

/-- `eq[5, A001222(A234275(n))]%10` -/
def P13600252575229212529.Spec : Prop :=
  ∀ n, (P13600252575229212529.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P12977114887929420088

`lt[A160086(n), log2(A223135(n))]%10`
-/

namespace A106146.P12977114887929420088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A223135 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n % 10

end

end A106146.P12977114887929420088

namespace A106146

/-- `lt[A160086(n), log2(A223135(n))]%10` -/
def P12977114887929420088.Spec : Prop :=
  ∀ n, (P12977114887929420088.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P7755990930903108395

`eq[2, A001222(A000007(n)+n)]%10`
-/

namespace A106146.P7755990930903108395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 10

end

end A106146.P7755990930903108395

namespace A106146

/-- `eq[2, A001222(A000007(n)+n)]%10` -/
def P7755990930903108395.Spec : Prop :=
  ∀ n, (P7755990930903108395.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P13778916542649463142

`lt[A160086(n), char[A018252(n+2)]]%10`
-/

namespace A106146.P13778916542649463142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 10

end

end A106146.P13778916542649463142

namespace A106146

/-- `lt[A160086(n), char[A018252(n+2)]]%10` -/
def P13778916542649463142.Spec : Prop :=
  ∀ n, (P13778916542649463142.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P16166121607032988944

`eq[A007920(A032741(n)), A160086(n)]%10`
-/

namespace A106146.P16166121607032988944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 10

end

end A106146.P16166121607032988944

namespace A106146

/-- `eq[A007920(A032741(n)), A160086(n)]%10` -/
def P16166121607032988944.Spec : Prop :=
  ∀ n, (P16166121607032988944.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P14816424829849671419

`lt[A160086(n), A001222(A226378(n))]%10`
-/

namespace A106146.P14816424829849671419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A226378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n % 10

end

end A106146.P14816424829849671419

namespace A106146

/-- `lt[A160086(n), A001222(A226378(n))]%10` -/
def P14816424829849671419.Spec : Prop :=
  ∀ n, (P14816424829849671419.a n : ℤ) = A106146 (n + 1)

end A106146

/-! ## A106146.P16675532742901879385

`A207790(4*n+3)%10`
-/

namespace A106146.P16675532742901879385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207790 (4 * n + 3)) 10

end

end A106146.P16675532742901879385

namespace A106146

/-- `A207790(4*n+3)%10` -/
def P16675532742901879385.Spec : Prop :=
  ∀ n, P16675532742901879385.a n = A106146 (n + 1)

end A106146

/-!
# A106147: Image of 1 under the repeated morphism 1 -> 21, 2 -> 32, 3 -> 43, 4 -> 14.

The programs for A106147, the canonical program `A106147.P14254822601208959897` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106147 has offset 0).

The definition of A106147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106147.P14254822601208959897

`abs(or(4, 1-a(and(n, n-1))))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106147

/-- `abs(or(4, 1-a(and(n, n-1))))` -/
def P14254822601208959897.Spec : Prop :=
  ∀ n, P14254822601208959897.a n = A106147 n

theorem P14254822601208959897.correct : P14254822601208959897.Spec := by
  intro n
  simp only [A106147]

end A106147

/-! ## A106147.P10969306304794892227

`(a(and(n, n-1))+2)%4+1` with `a(0)=1`
-/

namespace A106147.P10969306304794892227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 2) % 4 + 1

end

end A106147.P10969306304794892227

namespace A106147

/-- `(a(and(n, n-1))+2)%4+1` -/
def P10969306304794892227.Spec : Prop :=
  ∀ n, (P10969306304794892227.a n : ℤ) = A106147 n

end A106147

/-! ## A106147.P17945891928119266713

`and(3, a(and(n, n-1))+2)+1` with `a(0)=1`
-/

namespace A106147.P17945891928119266713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 2) + 1

end

end A106147.P17945891928119266713

namespace A106147

/-- `and(3, a(and(n, n-1))+2)+1` -/
def P17945891928119266713.Spec : Prop :=
  ∀ n, (P17945891928119266713.a n : ℤ) = A106147 n

end A106147

/-! ## A106147.P11246276250579463601

`abs(or(4, n%2-a(floor(n/2))))` with `a(0)=1`
-/

namespace A106147.P11246276250579463601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor 4 (((n % 2 : ℕ) : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)|

end

end A106147.P11246276250579463601

namespace A106147

/-- `abs(or(4, n%2-a(floor(n/2))))` -/
def P11246276250579463601.Spec : Prop :=
  ∀ n, P11246276250579463601.a n = A106147 n

end A106147

/-! ## A106147.P10788480135718210312

`and(3, -∑[∑{e}[xor(n, -n), 2-#]])+1`
-/

namespace A106147.P10788480135718210312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A106147.P10788480135718210312

namespace A106147

/-- `and(3, -∑[∑{e}[xor(n, -n), 2-#]])+1` -/
def P10788480135718210312.Spec : Prop :=
  ∀ n, P10788480135718210312.a n = A106147 n

end A106147

/-! ## A106147.P12509044592724759145

`(32-∑[∑{e}[xor(n, -n), 2-#]])%4+1`
-/

namespace A106147.P12509044592724759145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (32 - ∑ j ∈ Finset.range (n + 1), f1 j) 4 + 1

end

end A106147.P12509044592724759145

namespace A106147

/-- `(32-∑[∑{e}[xor(n, -n), 2-#]])%4+1` -/
def P12509044592724759145.Spec : Prop :=
  ∀ n, P12509044592724759145.a n = A106147 n

end A106147

/-! ## A106147.P8749155228052309439

`and(3, 32-∑[1-val(abs(1-n)+1, 2)])+1`
-/

namespace A106147.P8749155228052309439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (32 - ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A106147.P8749155228052309439

namespace A106147

/-- `and(3, 32-∑[1-val(abs(1-n)+1, 2)])+1` -/
def P8749155228052309439.Spec : Prop :=
  ∀ n, P8749155228052309439.a n = A106147 n

end A106147

/-! ## A106147.P9084624100154383538

`A120738(n)%4+1`
-/

namespace A106147.P9084624100154383538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120738 n) 4 + 1

end

end A106147.P9084624100154383538

namespace A106147

/-- `A120738(n)%4+1` -/
def P9084624100154383538.Spec : Prop :=
  ∀ n, P9084624100154383538.a n = A106147 n

end A106147

/-! ## A106147.P4166343318488103893

`A131762(n)%4+1`
-/

namespace A106147.P4166343318488103893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131762 n) 4 + 1

end

end A106147.P4166343318488103893

namespace A106147

/-- `A131762(n)%4+1` -/
def P4166343318488103893.Spec : Prop :=
  ∀ n, P4166343318488103893.a n = A106147 n

end A106147

/-! ## A106147.P11926709745923120945

`9%(A179868(n)+4)`
-/

namespace A106147.P11926709745923120945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A179868 n + 4)

end

end A106147.P11926709745923120945

namespace A106147

/-- `9%(A179868(n)+4)` -/
def P11926709745923120945.Spec : Prop :=
  ∀ n, P11926709745923120945.a n = A106147 n

end A106147

/-! ## A106147.P7099442787888947158

`xor(10, A048883(n))%5`
-/

namespace A106147.P7099442787888947158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 10 (A048883 n)) 5

end

end A106147.P7099442787888947158

namespace A106147

/-- `xor(10, A048883(n))%5` -/
def P7099442787888947158.Spec : Prop :=
  ∀ n, P7099442787888947158.a n = A106147 n

end A106147

/-! ## A106147.P14438309567536803866

`and(3, -A000120(n))+1`
-/

namespace A106147.P14438309567536803866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A000120 n) + 1

end

end A106147.P14438309567536803866

namespace A106147

/-- `and(3, -A000120(n))+1` -/
def P14438309567536803866.Spec : Prop :=
  ∀ n, P14438309567536803866.a n = A106147 n

end A106147

/-! ## A106147.P3486294158845974819

`and(3, A011371(n)-n)+1`
-/

namespace A106147.P3486294158845974819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A011371 n - (n : ℤ)) + 1

end

end A106147.P3486294158845974819

namespace A106147

/-- `and(3, A011371(n)-n)+1` -/
def P3486294158845974819.Spec : Prop :=
  ∀ n, P3486294158845974819.a n = A106147 n

end A106147

/-! ## A106147.P7578085693305551402

`A280053(a(and(n, n-1))+3)` with `a(0)=1`
-/

namespace A106147.P7578085693305551402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280053 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 3).toNat

end

end A106147.P7578085693305551402

namespace A106147

/-- `A280053(a(and(n, n-1))+3)` -/
def P7578085693305551402.Spec : Prop :=
  ∀ n, P7578085693305551402.a n = A106147 n

end A106147

/-! ## A106147.P17025250847011071141

`A001222(a(and(n, n-1))+59)` with `a(0)=1`
-/

namespace A106147.P17025250847011071141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001222 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 59).toNat

end

end A106147.P17025250847011071141

namespace A106147

/-- `A001222(a(and(n, n-1))+59)` -/
def P17025250847011071141.Spec : Prop :=
  ∀ n, P17025250847011071141.a n = A106147 n

end A106147

/-! ## A106147.P8419042621251883649

`val(A018252(10*a(and(n, n-1))), 2)` with `a(0)=1`
-/

namespace A106147.P8419042621251883649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation (A018252 (10 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)).toNat 2

end

end A106147.P8419042621251883649

namespace A106147

/-- `val(A018252(10*a(and(n, n-1))), 2)` -/
def P8419042621251883649.Spec : Prop :=
  ∀ n, (P8419042621251883649.a n : ℤ) = A106147 n

end A106147

/-! ## A106147.P361117806001671580

`A010883(A131762(n))`
-/

namespace A106147.P361117806001671580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A131762 n).toNat

end

end A106147.P361117806001671580

namespace A106147

/-- `A010883(A131762(n))` -/
def P361117806001671580.Spec : Prop :=
  ∀ n, P361117806001671580.a n = A106147 n

end A106147

/-! ## A106147.P16940470065586072191

`A010883(A324467(n))`
-/

namespace A106147.P16940470065586072191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A324467 n).toNat

end

end A106147.P16940470065586072191

namespace A106147

/-- `A010883(A324467(n))` -/
def P16940470065586072191.Spec : Prop :=
  ∀ n, P16940470065586072191.a n = A106147 n

end A106147

/-! ## A106147.P2981533856473887880

`xor(1, A179868(2*n+1))+1`
-/

namespace A106147.P2981533856473887880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A179868 (2 * n + 1)) + 1

end

end A106147.P2981533856473887880

namespace A106147

/-- `xor(1, A179868(2*n+1))+1` -/
def P2981533856473887880.Spec : Prop :=
  ∀ n, P2981533856473887880.a n = A106147 n

end A106147

/-! ## A106147.P7241249028436868843

`A010883(A120738(n))`
-/

namespace A106147.P7241249028436868843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A120738 n).toNat

end

end A106147.P7241249028436868843

namespace A106147

/-- `A010883(A120738(n))` -/
def P7241249028436868843.Spec : Prop :=
  ∀ n, P7241249028436868843.a n = A106147 n

end A106147

/-!
# A106149: Number of prime factors with multiplicity of the difference between consecutive primes.

The programs for A106149, the canonical program `A106149.P10430392262573295880` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106149 has offset 1).

The definition of A106149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106149.P10430392262573295880

`A001222(A000040(n+2)-A000040(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106149

/-- `A001222(A000040(n+2)-A000040(n+1))` -/
def P10430392262573295880.Spec : Prop :=
  ∀ n, P10430392262573295880.a n = A106149 (n + 1)

theorem P10430392262573295880.correct : P10430392262573295880.Spec := by
  intro n
  simp only [A106149, Nat.add_sub_cancel]

end A106149

/-! ## A106149.P11845332744349769622

`∑{e}[A001223(n+1), #]`
-/

namespace A106149.P11845332744349769622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P11845332744349769622

namespace A106149

/-- `∑{e}[A001223(n+1), #]` -/
def P11845332744349769622.Spec : Prop :=
  ∀ n, (P11845332744349769622.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P6623163678210462678

`∑{e}[log2(A218075(n+1)), #]`
-/

namespace A106149.P6623163678210462678
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A106149.P6623163678210462678

namespace A106149

/-- `∑{e}[log2(A218075(n+1)), #]` -/
def P6623163678210462678.Spec : Prop :=
  ∀ n, (P6623163678210462678.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P9883183441575300936

`A001222(A001223(n+1))`
-/

namespace A106149.P9883183441575300936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001223 (n + 1)).toNat

end

end A106149.P9883183441575300936

namespace A106149

/-- `A001222(A001223(n+1))` -/
def P9883183441575300936.Spec : Prop :=
  ∀ n, P9883183441575300936.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P14560706828847527324

`A302242(A082910(n+1))`
-/

namespace A106149.P14560706828847527324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A082910 (n + 1)).toNat

end

end A106149.P14560706828847527324

namespace A106149

/-- `A302242(A082910(n+1))` -/
def P14560706828847527324.Spec : Prop :=
  ∀ n, P14560706828847527324.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P369250043929126397

`∑{e}[A075526(n+1), #]`
-/

namespace A106149.P369250043929126397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P369250043929126397

namespace A106149

/-- `∑{e}[A075526(n+1), #]` -/
def P369250043929126397.Spec : Prop :=
  ∀ n, (P369250043929126397.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P13865581614211290547

`∑{e}[A054541(n+2), #]`
-/

namespace A106149.P13865581614211290547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P13865581614211290547

namespace A106149

/-- `∑{e}[A054541(n+2), #]` -/
def P13865581614211290547.Spec : Prop :=
  ∀ n, (P13865581614211290547.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P4584519744866273700

`∑{e}[A125266(n+2), #]`
-/

namespace A106149.P4584519744866273700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P4584519744866273700

namespace A106149

/-- `∑{e}[A125266(n+2), #]` -/
def P4584519744866273700.Spec : Prop :=
  ∀ n, (P4584519744866273700.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P16134105797012339847

`∑{e}[Δ[A000040(n+1)], #]`
-/

namespace A106149.P16134105797012339847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P16134105797012339847

namespace A106149

/-- `∑{e}[Δ[A000040(n+1)], #]` -/
def P16134105797012339847.Spec : Prop :=
  ∀ n, (P16134105797012339847.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P9407050923400572138

`A001222(A075526(n+1))`
-/

namespace A106149.P9407050923400572138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075526 (n + 1)).toNat

end

end A106149.P9407050923400572138

namespace A106149

/-- `A001222(A075526(n+1))` -/
def P9407050923400572138.Spec : Prop :=
  ∀ n, P9407050923400572138.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P2875207740510400191

`A001222(A054541(n+2))`
-/

namespace A106149.P2875207740510400191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A054541 (n + 2)).toNat

end

end A106149.P2875207740510400191

namespace A106149

/-- `A001222(A054541(n+2))` -/
def P2875207740510400191.Spec : Prop :=
  ∀ n, P2875207740510400191.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P8879711961870832978

`A001222(A125266(n+2))`
-/

namespace A106149.P8879711961870832978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125266 (n + 2)).toNat

end

end A106149.P8879711961870832978

namespace A106149

/-- `A001222(A125266(n+2))` -/
def P8879711961870832978.Spec : Prop :=
  ∀ n, P8879711961870832978.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P4593084363624725900

`A001222(A076368(n+2)-1)`
-/

namespace A106149.P4593084363624725900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076368 (n + 2) - 1).toNat

end

end A106149.P4593084363624725900

namespace A106149

/-- `A001222(A076368(n+2)-1)` -/
def P4593084363624725900.Spec : Prop :=
  ∀ n, P4593084363624725900.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P1037229671537180771

`A001222(A230846(n+2)-1)`
-/

namespace A106149.P1037229671537180771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A230846 (n + 2) - 1).toNat

end

end A106149.P1037229671537180771

namespace A106149

/-- `A001222(A230846(n+2)-1)` -/
def P1037229671537180771.Spec : Prop :=
  ∀ n, P1037229671537180771.a n = A106149 (n + 1)

end A106149

/-! ## A106149.P11940787077411310380

`∑{e}[A181346(n+2), #]`
-/

namespace A106149.P11940787077411310380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181346 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P11940787077411310380

namespace A106149

/-- `∑{e}[A181346(n+2), #]` -/
def P11940787077411310380.Spec : Prop :=
  ∀ n, (P11940787077411310380.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P18277914460291542495

`∑{e}[A219606(2*n+1), #]`
-/

namespace A106149.P18277914460291542495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P18277914460291542495

namespace A106149

/-- `∑{e}[A219606(2*n+1), #]` -/
def P18277914460291542495.Spec : Prop :=
  ∀ n, (P18277914460291542495.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P16591495093797102321

`∑{e}[A262138(2*n+1), #]`
-/

namespace A106149.P16591495093797102321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262138 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P16591495093797102321

namespace A106149

/-- `∑{e}[A262138(2*n+1), #]` -/
def P16591495093797102321.Spec : Prop :=
  ∀ n, (P16591495093797102321.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P4323371209160014896

`∑{e}[A392034(n+1), #]`
-/

namespace A106149.P4323371209160014896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106149.P4323371209160014896

namespace A106149

/-- `∑{e}[A392034(n+1), #]` -/
def P4323371209160014896.Spec : Prop :=
  ∀ n, (P4323371209160014896.a n : ℤ) = A106149 (n + 1)

end A106149

/-! ## A106149.P14331129626148101425

`A001222(A085072(A000040(n+1)))`
-/

namespace A106149.P14331129626148101425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085072 (A000040 (n + 1)).toNat).toNat

end

end A106149.P14331129626148101425

namespace A106149

/-- `A001222(A085072(A000040(n+1)))` -/
def P14331129626148101425.Spec : Prop :=
  ∀ n, P14331129626148101425.a n = A106149 (n + 1)

end A106149

/-!
# A106151: In binary representation of n: delete one zero in each contiguous block of zeros.

The programs for A106151, there is no canonical definition to state claims against.
-/

/-! ## A106151.P12558544266862868821

`A318921(A175048(n+1))`
-/

namespace A106151.P12558544266862868821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A175048 (n + 1)).toNat

end

end A106151.P12558544266862868821

/-! ## A106151.P394547536515870478

`A319419(A175048(2*n+1-n))`
-/

namespace A106151.P394547536515870478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (A175048 (2 * n + 1 - n)).toNat

end

end A106151.P394547536515870478

/-! ## A106151.P7355235414642955242

`A319419(or(A000007(n), A175048(n+1)))`
-/

namespace A106151.P7355235414642955242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (Int.lor (A000007 n) (A175048 (n + 1))).toNat

end

end A106151.P7355235414642955242

/-! ## A106151.P18216637430285059590

`A319419(A175048(n+1)%A001567(n+1))`
-/

namespace A106151.P18216637430285059590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (Int.tmod (A175048 (n + 1)) (A001567 (n + 1))).toNat

end

end A106151.P18216637430285059590

/-! ## A106151.P12574397979297705634

`A319419(A175048(n+1))%A033548(n+1)`
-/

namespace A106151.P12574397979297705634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319419 (A175048 (n + 1)).toNat) (A033548 (n + 1))

end

end A106151.P12574397979297705634

/-! ## A106151.P10905978443814385090

`A319419(A175048(n+1)+A000007(2*(n+2)))`
-/

namespace A106151.P10905978443814385090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (A175048 (n + 1) + A000007 (2 * (n + 2))).toNat

end

end A106151.P10905978443814385090

/-! ## A106151.P17634927101147971506

`A319419(lcm(2, A175048(n+1)))`
-/

namespace A106151.P17634927101147971506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 (Int.lcm 2 (A175048 (n + 1)))

end

end A106151.P17634927101147971506

/-! ## A106151.P4619953142679188470

`A371442(A129603(n+1))`
-/

namespace A106151.P4619953142679188470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 (A129603 (n + 1)).toNat

end

end A106151.P4619953142679188470

/-! ## A106151.P1117650144501855618

`A371459(A129602(n+1))`
-/

namespace A106151.P1117650144501855618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371459 (A129602 (n + 1)).toNat

end

end A106151.P1117650144501855618

/-!
# A106154: Generation 5 of the substitution 1->{2, 1, 2}, 2->{3, 2, 3}, 3->{4, 3, 4}, 4->{5, 4, 5}, 5->{6, 5, 6}, 6->{1, 6, 1}, starting with 1.

The programs for A106154, the canonical program `A106154.P17885719808567431841` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106154 has offset 0).

The definition of A106154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106154.P13717373186430048297

`6-A090881(A120880(n))`
-/

namespace A106154.P13717373186430048297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A090881 (A120880 n).toNat

end

end A106154.P13717373186430048297

namespace A106154

/-- `6-A090881(A120880(n))` -/
def P13717373186430048297.Spec : Prop :=
  ∀ n, P13717373186430048297.a n = A106154 n

end A106154

/-! ## A106154.P1931070042511866595

`6-and(A001222(A120880(n)), A000225(n))`
-/

namespace A106154.P1931070042511866595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.land (A001222 (A120880 n).toNat) (A000225 n)

end

end A106154.P1931070042511866595

namespace A106154

/-- `6-and(A001222(A120880(n)), A000225(n))` -/
def P1931070042511866595.Spec : Prop :=
  ∀ n, P1931070042511866595.a n = A106154 n

end A106154

/-! ## A106154.P17837074889165635379

`7-(A326538(A061393(n))+A062756(n))`
-/

namespace A106154.P17837074889165635379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (A326538 (A061393 n).toNat + A062756 n)

end

end A106154.P17837074889165635379

namespace A106154

/-- `7-(A326538(A061393(n))+A062756(n))` -/
def P17837074889165635379.Spec : Prop :=
  ∀ n, P17837074889165635379.a n = A106154 n

end A106154

/-! ## A106154.P17885719808567431841

`4-(A062756(n)-A062756(A061393(2*(n+2))))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106154

/-- `4-(A062756(n)-A062756(A061393(2*(n+2))))` -/
def P17885719808567431841.Spec : Prop :=
  ∀ n, P17885719808567431841.a n = A106154 n

theorem P17885719808567431841.correct : P17885719808567431841.Spec := by
  intro n
  simp only [A106154]

end A106154

/-! ## A106154.P14984894776846293732

`A083947(A002145(n+4))-A062756(3*n+1)`
-/

namespace A106154.P14984894776846293732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083947 (A002145 (n + 4)).toNat - A062756 (3 * n + 1)

end

end A106154.P14984894776846293732

namespace A106154

/-- `A083947(A002145(n+4))-A062756(3*n+1)` -/
def P14984894776846293732.Spec : Prop :=
  ∀ n, P14984894776846293732.a n = A106154 n

end A106154

/-! ## A106154.P12332540624971989365

`A131083(4*record[and(2*n, -n)]+3)-A062756(n)`
-/

namespace A106154.P12332540624971989365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131083 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat - A062756 n

end

end A106154.P12332540624971989365

namespace A106154

/-- `A131083(4*record[and(2*n, -n)]+3)-A062756(n)` -/
def P12332540624971989365.Spec : Prop :=
  ∀ n, P12332540624971989365.a n = A106154 n

end A106154

/-! ## A106154.P18270841014172322217

`6-A065363(A037314(n))`
-/

namespace A106154.P18270841014172322217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A065363 (A037314 n).toNat

end

end A106154.P18270841014172322217

namespace A106154

/-- `6-A065363(A037314(n))` -/
def P18270841014172322217.Spec : Prop :=
  ∀ n, P18270841014172322217.a n = A106154 n

end A106154

/-! ## A106154.P5297437445885122732

`A002260(A166136(n+5)-log2(A120880(n)))`
-/

namespace A106154.P5297437445885122732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway ((A166136 (n + 5) : ℝ) - Real.logb 2 (A120880 n : ℝ))).toNat

end

end A106154.P5297437445885122732

namespace A106154

/-- `A002260(A166136(n+5)-log2(A120880(n)))` -/
def P5297437445885122732.Spec : Prop :=
  ∀ n, P5297437445885122732.a n = A106154 n

end A106154

/-! ## A106154.P171285147540887033

`A004736(A062756(n)+A052905(n+3))`
-/

namespace A106154.P171285147540887033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A062756 n + A052905 (n + 3)).toNat

end

end A106154.P171285147540887033

namespace A106154

/-- `A004736(A062756(n)+A052905(n+3))` -/
def P171285147540887033.Spec : Prop :=
  ∀ n, P171285147540887033.a n = A106154 n

end A106154

/-! ## A106154.P6437789019364069583

`6-A196564(A007089(n))`
-/

namespace A106154.P6437789019364069583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A196564 (A007089 n).toNat

end

end A106154.P6437789019364069583

namespace A106154

/-- `6-A196564(A007089(n))` -/
def P6437789019364069583.Spec : Prop :=
  ∀ n, P6437789019364069583.a n = A106154 n

end A106154

/-!
# A106157: Expansion of g.f. (1-x-x^3+x^4-2*x^2)/((1-2*x)*(x-1)^2*(x+1)^2).

The programs for A106157, the canonical program `A106157.P4619903413168058906` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106157 has offset 0).

The definition of A106157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106157.P4619903413168058906

`1/18*(2^(n+1)-(3*n+2)*(-1)^n-9*n-18)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106157

/-- `1/18*(2^(n+1)-(3*n+2)*(-1)^n-9*n-18)` -/
def P4619903413168058906.Spec : Prop :=
  ∀ n, P4619903413168058906.a n = (A106157 n : ℚ)

end A106157

/-! ## A106157.P18230741574072297498

`A153234(n)-A004396(A026741(n+1))`
-/

namespace A106157.P18230741574072297498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n - A004396 (A026741 (n + 1)).toNat

end

end A106157.P18230741574072297498

namespace A106157

/-- `A153234(n)-A004396(A026741(n+1))` -/
def P18230741574072297498.Spec : Prop :=
  ∀ n, P18230741574072297498.a n = A106157 n

end A106157

/-! ## A106157.P10818077906607158305

`A320933(n)-A034299(n)`
-/

namespace A106157.P10818077906607158305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 n - A034299 n

end

end A106157.P10818077906607158305

namespace A106157

/-- `A320933(n)-A034299(n)` -/
def P10818077906607158305.Spec : Prop :=
  ∀ n, P10818077906607158305.a n = A106157 n

end A106157

/-! ## A106157.P12099181482365365772

`∑[A172285(n)]-A134522(n)`
-/

namespace A106157.P12099181482365365772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A134522 n

end

end A106157.P12099181482365365772

namespace A106157

/-- `∑[A172285(n)]-A134522(n)` -/
def P12099181482365365772.Spec : Prop :=
  ∀ n, P12099181482365365772.a n = A106157 n

end A106157

/-! ## A106157.P10707954798011195500

`A320933(n)-∑[A053088(n)]`
-/

namespace A106157.P10707954798011195500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106157.P10707954798011195500

namespace A106157

/-- `A320933(n)-∑[A053088(n)]` -/
def P10707954798011195500.Spec : Prop :=
  ∀ n, P10707954798011195500.a n = A106157 n

end A106157

/-! ## A106157.P4191111243831553375

`A000225(n)-(A110654(n)+A034299(n))`
-/

namespace A106157.P4191111243831553375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A110654 n + A034299 n)

end

end A106157.P4191111243831553375

namespace A106157

/-- `A000225(n)-(A110654(n)+A034299(n))` -/
def P4191111243831553375.Spec : Prop :=
  ∀ n, P4191111243831553375.a n = A106157 n

end A106157

/-! ## A106157.P9614668402173446716

`∑[A000975(n)-A053088(n)]-A001045(n)`
-/

namespace A106157.P9614668402173446716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A053088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001045 n

end

end A106157.P9614668402173446716

namespace A106157

/-- `∑[A000975(n)-A053088(n)]-A001045(n)` -/
def P9614668402173446716.Spec : Prop :=
  ∀ n, P9614668402173446716.a n = A106157 n

end A106157

/-! ## A106157.P555037794769578056

`A000051(n)-(A110654(n)+A034299(n)+2)`
-/

namespace A106157.P555037794769578056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A110654 n + A034299 n + 2)

end

end A106157.P555037794769578056

namespace A106157

/-- `A000051(n)-(A110654(n)+A034299(n)+2)` -/
def P555037794769578056.Spec : Prop :=
  ∀ n, P555037794769578056.a n = A106157 n

end A106157

/-!
# A106158: Number of Type 4^E Euclidean self-dual codes over GF(4) of length 2n, excluding those of Type 4^E_{II}.

The programs for A106158, there is no canonical definition to state claims against.
-/

/-! ## A106158.P14504478687763864835

`A344612(A206303(n))+A000108(n)`
-/

namespace A106158.P14504478687763864835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A206303 n).toNat + A000108 n

end

end A106158.P14504478687763864835

/-! ## A106158.P16502292349164559655

`A039708(or(A136803(n+1), A330626(n)))`
-/

namespace A106158.P16502292349164559655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (Int.lor (A136803 (n + 1)) (A330626 n)).toNat

end

end A106158.P16502292349164559655

/-!
# A106169: Number of inequivalent codes attaining highest minimal Hamming distance of any Type (4_II)^H+ even Hermitian additive self-dual code over GF(4) of length 2n.

The programs for A106169, there is no canonical definition to state claims against.
-/

/-! ## A106169.P15277911041362341906

`A180378(A124838(n+1))`
-/

namespace A106169.P15277911041362341906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180378 (A124838 (n + 1)).toNat

end

end A106169.P15277911041362341906

/-! ## A106169.P7315462646006074973

`A326667(A220562(n+1)*A252746(n))`
-/

namespace A106169.P7315462646006074973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326667 (A220562 (n + 1) * A252746 n).toNat

end

end A106169.P7315462646006074973

/-! ## A106169.P5778328337103025186

`gcd(A060142(A060281(n+1)), A277928(n))`
-/

namespace A106169.P5778328337103025186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060142 (A060281 (n + 1)).toNat) (A277928 n)

end

end A106169.P5778328337103025186

/-!
# A106171: A triangle with three consecutive primes as sides has an area that is a prime after rounding. The sequence gives the first of the three consecutive primes.

The programs for A106171, there is no canonical definition to state claims against.
-/

/-! ## A106171.P2346964860725506237

`p?[A235035(2*n+5)-A001222(A235039(n))]`
-/

namespace A106171.P2346964860725506237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235035 (2 * n + 5) - A001222 (A235039 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106171.P2346964860725506237

/-!
# A106173: 7th diagonal of triangle in A059317.

The programs for A106173, there is no canonical definition to state claims against.
-/

/-! ## A106173.P10824499028434282721

`∑[A025443(record[A220602(n+1)])]`
-/

namespace A106173.P10824499028434282721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106173.P10824499028434282721

/-! ## A106173.P17073692580119878588

`∑{d}[A003604(A351976(2*n+1)), #]`
-/

namespace A106173.P17073692580119878588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (A351976 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A106173.P17073692580119878588

/-! ## A106173.P10974147816286822981

`A055463(n)%A110654(A249696(n))`
-/

namespace A106173.P10974147816286822981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055463 n) (A110654 (A249696 n).toNat)

end

end A106173.P10974147816286822981

/-! ## A106173.P11795462562532891735

`xor(A002265(n), A336207(A001349(n)))`
-/

namespace A106173.P11795462562532891735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 n) (A336207 (A001349 n).toNat)

end

end A106173.P11795462562532891735

/-!
# A106174: a(n) = 2*n*a(n-1) - a(n-2), with a(0)=0, a(1)=1.

The programs for A106174, the canonical program `A106174.P1027441437175799301` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106174 has offset 0).

The definition of A106174 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*a(n-1)-a(n-2)` (program `A106174.P1027441437175799301`, by `A106174.P1027441437175799301.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106174.P1027441437175799301

`2*n*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106174

/-- `2*n*a(n-1)-a(n-2)` -/
def P1027441437175799301.Spec : Prop :=
  ∀ n, P1027441437175799301.a n = A106174 n

theorem P1027441437175799301.correct : P1027441437175799301.Spec := by
  intro n
  simp only [A106174]

end A106174

/-! ## A106174.P874606172703456239

`a(n-1)*A004277(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A106174.P874606172703456239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A004277 n - a (n - 2)

end

end A106174.P874606172703456239

namespace A106174

/-- `a(n-1)*A004277(n)-a(n-2)` -/
def P874606172703456239.Spec : Prop :=
  ∀ n, P874606172703456239.a n = A106174 n

end A106174

/-! ## A106174.P15215929239563521601

`a(n-1)*A005843(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A106174.P15215929239563521601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A005843 n - a (n - 2)

end

end A106174.P15215929239563521601

namespace A106174

/-- `a(n-1)*A005843(n)-a(n-2)` -/
def P15215929239563521601.Spec : Prop :=
  ∀ n, P15215929239563521601.a n = A106174 n

end A106174

/-! ## A106174.P15655532378491635924

`A093985(n+1)-A093986(n+1)`
-/

namespace A106174.P15655532378491635924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093985 (n + 1) - A093986 (n + 1)

end

end A106174.P15655532378491635924

namespace A106174

/-- `A093985(n+1)-A093986(n+1)` -/
def P15655532378491635924.Spec : Prop :=
  ∀ n, P15655532378491635924.a n = A106174 n

end A106174

/-! ## A106174.P14845375520722375456

`A093985(n+1)+A008683(A244572(n+2))*A093986(n+1)`
-/

namespace A106174.P14845375520722375456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093985 (n + 1) + A008683 (A244572 (n + 2)).toNat * A093986 (n + 1)

end

end A106174.P14845375520722375456

namespace A106174

/-- `A093985(n+1)+A008683(A244572(n+2))*A093986(n+1)` -/
def P14845375520722375456.Spec : Prop :=
  ∀ n, P14845375520722375456.a n = A106174 n

end A106174

/-!
# A106177: Functional composition table for "n o m" = "n composed with m", where n and m are the "primal codes" of finite partial functions on the positive integers and 1 is the code for the empty function.

The programs for A106177, there is no canonical definition to state claims against.
-/

/-! ## A106177.P9082656042272469538

`gcd(A196416(n), A309011(A068526(n+1)))`
-/

namespace A106177.P9082656042272469538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196416 n) (A309011 (A068526 (n + 1)).toNat)

end

end A106177.P9082656042272469538

/-! ## A106177.P745046146331122985

`gcd(A009999(n), A051682(A112292(n)))`
-/

namespace A106177.P745046146331122985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009999 n) (A051682 (A112292 n).toNat)

end

end A106177.P745046146331122985

/-! ## A106177.P14580357389009210631

`gcd(A126759(A096334(n)), A226513(n))`
-/

namespace A106177.P14580357389009210631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126759 (A096334 n).toNat) (A226513 n)

end

end A106177.P14580357389009210631

/-! ## A106177.P5973171343250325962

`gcd(A196416(n), A267700(A084950(n)))`
-/

namespace A106177.P5973171343250325962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196416 n) (A267700 (A084950 n).toNat)

end

end A106177.P5973171343250325962

/-! ## A106177.P1363534826638079263

`gcd(A027465(n), A350766(A350803(n+1)))`
-/

namespace A106177.P1363534826638079263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027465 n) (A350766 (A350803 (n + 1)).toNat)

end

end A106177.P1363534826638079263

/-!
# A106178: Functional composition table for "n o m" = "n composed with m", where n and m are the "primal codes" of finite partial functions on the positive integers and 1 is the code for the empty function, but omitting the trivial values of 1 at the margins of the table.

The programs for A106178, there is no canonical definition to state claims against.
-/

/-! ## A106178.P16504786419454775088

`A106177(2*comp[∑[n]]-(n-1))`
-/

namespace A106178.P16504786419454775088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106177 ((2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A106178.P16504786419454775088

/-! ## A106178.P6442925439419583974

`gcd(A004868(A049958(n+3)), A223949(n+1))`
-/

namespace A106178.P6442925439419583974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004868 (A049958 (n + 3)).toNat) (A223949 (n + 1))

end

end A106178.P6442925439419583974

/-!
# A106179: Triangle read by rows: T(n,k) is the number of series-reduced planted trees with n leaves and k internal nodes.

The programs for A106179, there is no canonical definition to state claims against.
-/

/-! ## A106179.P10840057345617095006

`A292630(n)-A107846(A170829(n))`
-/

namespace A106179.P10840057345617095006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n - A107846 (A170829 n).toNat

end

end A106179.P10840057345617095006

/-! ## A106179.P1182897875627235012

`A292630(n)-A307598(A326439(n))`
-/

namespace A106179.P1182897875627235012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n - A307598 (A326439 n).toNat

end

end A106179.P1182897875627235012

/-! ## A106179.P51456267932969433

`A327695(A263858(n))+A086350(n)`
-/

namespace A106179.P51456267932969433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327695 (A263858 n).toNat + A086350 n

end

end A106179.P51456267932969433

/-! ## A106179.P9391574980725815478

`A292630(n)-A307598(A263858(n))`
-/

namespace A106179.P9391574980725815478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n - A307598 (A263858 n).toNat

end

end A106179.P9391574980725815478

/-! ## A106179.P6395364025350447517

`A382691(A030436(n))+A073133(n+1)`
-/

namespace A106179.P6395364025350447517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382691 (A030436 n).toNat + A073133 (n + 1)

end

end A106179.P6395364025350447517

/-!
# A106180: Matrix inverse of number triangle A046854.

The programs for A106180, there is no canonical definition to state claims against.
-/

/-! ## A106180.P9515590046009618691

`A124778(A174787(n+1)-A124778(n))*A185331(n)`
-/

namespace A106180.P9515590046009618691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A174787 (n + 1) - A124778 n).toNat * A185331 n

end

end A106180.P9515590046009618691

/-! ## A106180.P13598028167729135852

`A026492(A243663(n+1))*A185331(n)`
-/

namespace A106180.P13598028167729135852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (A243663 (n + 1)).toNat * A185331 n

end

end A106180.P13598028167729135852

/-! ## A106180.P12888156043520794404

`A124778(A174787(n+1))*A185331(n)`
-/

namespace A106180.P12888156043520794404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A174787 (n + 1)).toNat * A185331 n

end

end A106180.P12888156043520794404

/-! ## A106180.P3065962826367438049

`A185331(n%A010930(n))`
-/

namespace A106180.P3065962826367438049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185331 (Int.tmod (n : ℤ) (A010930 n)).toNat

end

end A106180.P3065962826367438049

/-! ## A106180.P13041595310579790699

`A185331(n)^A033999(A375314(n))`
-/

namespace A106180.P13041595310579790699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185331 n : ℚ) ^ (A033999 (A375314 n).toNat : ℤ)

end

end A106180.P13041595310579790699

/-!
# A106181: Expansion of c(-x^2)(1+2x-sqrt(1+4x^2))/2, c(x) the g.f. of A000108.

The programs for A106181, the canonical program `A106181.P18239189246069917284` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106181 has offset 0).

The definition of A106181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106181.P7165211582947981655

`A090192(or(n, ceil(acot(n))))`
-/

namespace A106181.P7165211582947981655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (Int.lor (n : ℤ) ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A106181.P7165211582947981655

namespace A106181

/-- `A090192(or(n, ceil(acot(n))))` -/
def P7165211582947981655.Spec : Prop :=
  ∀ n, P7165211582947981655.a n = A106181 n

end A106181

/-! ## A106181.P15606913369254865730

`(-1)^n*Δ[A090192(n)]`
-/

namespace A106181.P15606913369254865730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A106181.P15606913369254865730

namespace A106181

/-- `(-1)^n*Δ[A090192(n)]` -/
def P15606913369254865730.Spec : Prop :=
  ∀ n, P15606913369254865730.a n = A106181 n

end A106181

/-! ## A106181.P9981822115032968114

`A090192(floor(acot(n))+or(1, n))`
-/

namespace A106181.P9981822115032968114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (Nat.lor 1 n : ℤ)).toNat

end

end A106181.P9981822115032968114

namespace A106181

/-- `A090192(floor(acot(n))+or(1, n))` -/
def P9981822115032968114.Spec : Prop :=
  ∀ n, P9981822115032968114.a n = A106181 n

end A106181

/-! ## A106181.P9291500941603863431

`(-1)^∑[n]*Δ[A097331(n)]`
-/

namespace A106181.P9291500941603863431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A106181.P9291500941603863431

namespace A106181

/-- `(-1)^∑[n]*Δ[A097331(n)]` -/
def P9291500941603863431.Spec : Prop :=
  ∀ n, P9291500941603863431.a n = A106181 n

end A106181

/-! ## A106181.P18239189246069917284

`Δ[A105523(n)]*A062157(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106181

/-- `Δ[A105523(n)]*A062157(n)` -/
def P18239189246069917284.Spec : Prop :=
  ∀ n, P18239189246069917284.a n = A106181 n

theorem P18239189246069917284.correct : P18239189246069917284.Spec := by
  intro n
  simp only [A106181]

end A106181

/-! ## A106181.P8651596937009400588

`A090192(n+1)-A105523(n)`
-/

namespace A106181.P8651596937009400588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1) - A105523 n

end

end A106181.P8651596937009400588

namespace A106181

/-- `A090192(n+1)-A105523(n)` -/
def P8651596937009400588.Spec : Prop :=
  ∀ n, P8651596937009400588.a n = A106181 n

end A106181

/-! ## A106181.P3653567418219761576

`A090192(n+1)+A104624(n+1)/2`
-/

namespace A106181.P3653567418219761576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090192 (n + 1) : ℚ) + (A104624 (n + 1) : ℚ) / 2

end

end A106181.P3653567418219761576

namespace A106181

/-- `A090192(n+1)+A104624(n+1)/2` -/
def P3653567418219761576.Spec : Prop :=
  ∀ n, P3653567418219761576.a n = (A106181 n : ℚ)

end A106181

/-! ## A106181.P4905780483864318813

`A182492(A266256(n+1)+A266256(n))`
-/

namespace A106181.P4905780483864318813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (A266256 (n + 1) + A266256 n).toNat

end

end A106181.P4905780483864318813

namespace A106181

/-- `A182492(A266256(n+1)+A266256(n))` -/
def P4905780483864318813.Spec : Prop :=
  ∀ n, P4905780483864318813.a n = A106181 n

end A106181

/-! ## A106181.P8719722166981132604

`(A126120(n)-A097331(n))*A087960(n)`
-/

namespace A106181.P8719722166981132604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126120 n - A097331 n) * A087960 n

end

end A106181.P8719722166981132604

namespace A106181

/-- `(A126120(n)-A097331(n))*A087960(n)` -/
def P8719722166981132604.Spec : Prop :=
  ∀ n, P8719722166981132604.a n = A106181 n

end A106181

/-! ## A106181.P13146666907776918066

`A087960(n)*A126120(n)-A105523(n)`
-/

namespace A106181.P13146666907776918066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A126120 n - A105523 n

end

end A106181.P13146666907776918066

namespace A106181

/-- `A087960(n)*A126120(n)-A105523(n)` -/
def P13146666907776918066.Spec : Prop :=
  ∀ n, P13146666907776918066.a n = A106181 n

end A106181

/-! ## A106181.P16479214901852739017

`A090192(n+1)-A087960(n)*A097331(n)`
-/

namespace A106181.P16479214901852739017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1) - A087960 n * A097331 n

end

end A106181.P16479214901852739017

namespace A106181

/-- `A090192(n+1)-A087960(n)*A097331(n)` -/
def P16479214901852739017.Spec : Prop :=
  ∀ n, P16479214901852739017.a n = A106181 n

end A106181

/-! ## A106181.P5235996286005139268

`(A097331(n+1)-A097331(n))*A087960(n)`
-/

namespace A106181.P5235996286005139268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097331 (n + 1) - A097331 n) * A087960 n

end

end A106181.P5235996286005139268

namespace A106181

/-- `(A097331(n+1)-A097331(n))*A087960(n)` -/
def P5235996286005139268.Spec : Prop :=
  ∀ n, P5235996286005139268.a n = A106181 n

end A106181

/-! ## A106181.P4707378944957093089

`A097331(n+1)/A087960(n)-A105523(n)`
-/

namespace A106181.P4707378944957093089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097331 (n + 1) : ℚ) / (A087960 n : ℚ) - (A105523 n : ℚ)

end

end A106181.P4707378944957093089

namespace A106181

/-- `A097331(n+1)/A087960(n)-A105523(n)` -/
def P4707378944957093089.Spec : Prop :=
  ∀ n, P4707378944957093089.a n = (A106181 n : ℚ)

end A106181

/-! ## A106181.P16740439277798401246

`A090192(A123108(2*n)+A163805(n+1)²)`
-/

namespace A106181.P16740439277798401246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A123108 (2 * n) + A163805 (n + 1) ^ 2).toNat

end

end A106181.P16740439277798401246

namespace A106181

/-- `A090192(A123108(2*n)+A163805(n+1)²)` -/
def P16740439277798401246.Spec : Prop :=
  ∀ n, P16740439277798401246.a n = A106181 n

end A106181

/-! ## A106181.P10421664978697539455

`A182492(2*n+1)+A182492(A014601(n+1))`
-/

namespace A106181.P10421664978697539455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n + 1) + A182492 (A014601 (n + 1)).toNat

end

end A106181.P10421664978697539455

namespace A106181

/-- `A182492(2*n+1)+A182492(A014601(n+1))` -/
def P10421664978697539455.Spec : Prop :=
  ∀ n, P10421664978697539455.a n = A106181 n

end A106181

/-! ## A106181.P4170321331650770159

`A182492(2*n+1)+A182492(A059029(n+1))`
-/

namespace A106181.P4170321331650770159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n + 1) + A182492 (A059029 (n + 1)).toNat

end

end A106181.P4170321331650770159

namespace A106181

/-- `A182492(2*n+1)+A182492(A059029(n+1))` -/
def P4170321331650770159.Spec : Prop :=
  ∀ n, P4170321331650770159.a n = A106181 n

end A106181

/-! ## A106181.P15357743795602062190

`A182492(2*n+1)+A182492(A047485(n+2))`
-/

namespace A106181.P15357743795602062190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n + 1) + A182492 (A047485 (n + 2)).toNat

end

end A106181.P15357743795602062190

namespace A106181

/-- `A182492(2*n+1)+A182492(A047485(n+2))` -/
def P15357743795602062190.Spec : Prop :=
  ∀ n, P15357743795602062190.a n = A106181 n

end A106181

/-! ## A106181.P14215571218885699062

`A182492(2*n+1)+A182492(A047557(n+2))`
-/

namespace A106181.P14215571218885699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (2 * n + 1) + A182492 (A047557 (n + 2)).toNat

end

end A106181.P14215571218885699062

namespace A106181

/-- `A182492(2*n+1)+A182492(A047557(n+2))` -/
def P14215571218885699062.Spec : Prop :=
  ∀ n, P14215571218885699062.a n = A106181 n

end A106181

/-! ## A106181.P9123198341466500810

`A000007(n+1)-(A105523(n+1)+A105523(n))`
-/

namespace A106181.P9123198341466500810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A105523 (n + 1) + A105523 n)

end

end A106181.P9123198341466500810

namespace A106181

/-- `A000007(n+1)-(A105523(n+1)+A105523(n))` -/
def P9123198341466500810.Spec : Prop :=
  ∀ n, P9123198341466500810.a n = A106181 n

end A106181

/-! ## A106181.P10531888994901822001

`(A097331(n+1)-A097331(n))*A057077(n+1)`
-/

namespace A106181.P10531888994901822001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097331 (n + 1) - A097331 n) * A057077 (n + 1)

end

end A106181.P10531888994901822001

namespace A106181

/-- `(A097331(n+1)-A097331(n))*A057077(n+1)` -/
def P10531888994901822001.Spec : Prop :=
  ∀ n, P10531888994901822001.a n = A106181 n

end A106181

/-!
# A106182: Number of inequivalent binary sequences of length n, where two sequences are said to be equivalent if they have the same set of phrases in their Ziv-Lempel encodings (the phrases can appear in a different order in the two sequences).

The programs for A106182, there is no canonical definition to state claims against.
-/

/-! ## A106182.P11464790463053869393

`record[A360621(n)%A241178(n+1)]`
-/

namespace A106182.P11464790463053869393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360621 n) (A241178 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106182.P11464790463053869393

/-! ## A106182.P12584526556916226313

`∑[∑{d}[A022168(n)*A179230(n), #%2]]`
-/

namespace A106182.P12584526556916226313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n * A179230 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106182.P12584526556916226313

/-! ## A106182.P12340691607038269326

`A329548(A147617(n+1))`
-/

namespace A106182.P12340691607038269326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A147617 (n + 1)).toNat

end

end A106182.P12340691607038269326

/-! ## A106182.P7109501411465945102

`Δ[A316355(∑[A018015(n)])]`
-/

namespace A106182.P7109501411465945102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106182.P7109501411465945102

/-! ## A106182.P16574319323836239587

`A007149(A001629(n))+A002822(n+1)`
-/

namespace A106182.P16574319323836239587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A001629 n).toNat + A002822 (n + 1)

end

end A106182.P16574319323836239587

/-!
# A106183: Expansion of 1/sqrt(1-4*x-4*x^2+16*x^3).

The programs for A106183, there is no canonical definition to state claims against.
-/

/-! ## A106183.P6222481288361486271

`ceil(19^(n/5))*A000005(A001147(n))`
-/

namespace A106183.P6222481288361486271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(19 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉ * A000005 (A001147 n).toNat

end

end A106183.P6222481288361486271

/-! ## A106183.P696739091579083332

`A161655(A052986(n))`
-/

namespace A106183.P696739091579083332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A052986 n).toNat

end

end A106183.P696739091579083332

/-!
# A106184: Expansion of 1/sqrt(1-4*x-8*x^2+32*x^3).

The programs for A106184, there is no canonical definition to state claims against.
-/

/-! ## A106184.P192993309822904670

`A001316(n)*A268433(n)`
-/

namespace A106184.P192993309822904670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A268433 n

end

end A106184.P192993309822904670

/-! ## A106184.P12450226996747437983

`sqrt(A102376(n))*A268433(n)`
-/

namespace A106184.P12450226996747437983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) * (A268433 n : ℝ)

end

end A106184.P12450226996747437983

/-! ## A106184.P10461234949646310035

`Δ[A006046(n)]*A268433(n)`
-/

namespace A106184.P10461234949646310035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A268433 n

end

end A106184.P10461234949646310035

/-! ## A106184.P13161507686676694460

`A060632(2*n)*A268433(n)`
-/

namespace A106184.P13161507686676694460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A268433 n

end

end A106184.P13161507686676694460

/-! ## A106184.P14211408829231309698

`A000079(A000120(n))*A268433(n)`
-/

namespace A106184.P14211408829231309698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A268433 n

end

end A106184.P14211408829231309698

/-! ## A106184.P8691038952425667617

`A006519(A335063(n+1))*A268433(n)`
-/

namespace A106184.P8691038952425667617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A335063 (n + 1)).toNat * A268433 n

end

end A106184.P8691038952425667617

/-! ## A106184.P12355038281547668951

`gcd(A000984(n), A060546(n))*A268433(n)`
-/

namespace A106184.P12355038281547668951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000984 n) (A060546 n) : ℤ) * A268433 n

end

end A106184.P12355038281547668951

/-! ## A106184.P9677825167910220772

`A000005(A019565(n))*A268433(n)`
-/

namespace A106184.P9677825167910220772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A019565 n).toNat * A268433 n

end

end A106184.P9677825167910220772

/-!
# A106185: Expansion of 1/sqrt(1-4*x-12*x^2+48*x^3).

The programs for A106185, there is no canonical definition to state claims against.
-/

/-! ## A106185.P2834403096267919085

`A130916(A133577(n))`
-/

namespace A106185.P2834403096267919085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A133577 n).toNat

end

end A106185.P2834403096267919085

/-!
# A106186: Expansion of 1/sqrt(1-4x+4x^2-16x^3).

The programs for A106186, there is no canonical definition to state claims against.
-/

/-! ## A106186.P12408328648897868004

`A008621(or(A155212(n), A229277(n)))`
-/

namespace A106186.P12408328648897868004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A155212 n) (A229277 n)).toNat

end

end A106186.P12408328648897868004

/-! ## A106186.P390714384997381055

`A110655(or(A155212(n), A229277(n)))`
-/

namespace A106186.P390714384997381055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lor (A155212 n) (A229277 n)).toNat

end

end A106186.P390714384997381055

/-! ## A106186.P8680964952512779486

`A008621(or(A139082(n+1), A229277(n)))`
-/

namespace A106186.P8680964952512779486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A139082 (n + 1)) (A229277 n)).toNat

end

end A106186.P8680964952512779486

/-!
# A106187: Sequence array for central binomial numbers A000984.

The programs for A106187, the canonical program `A106187.P17798266359033400310` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106187 has offset 0).

The definition of A106187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106187.P17798266359033400310

`C(2*(row(n)-col(n)), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106187

/-- `C(2*(row(n)-col(n)), row(n)-col(n))` -/
def P17798266359033400310.Spec : Prop :=
  ∀ n, (P17798266359033400310.a n : ℤ) = A106187 n

theorem P17798266359033400310.correct : P17798266359033400310.Spec := by
  intro n
  simp only [A106187]

end A106187

/-! ## A106187.P13777709667092268763

`A000984(row(n)-col(n))`
-/

namespace A106187.P13777709667092268763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A106187.P13777709667092268763

namespace A106187

/-- `A000984(row(n)-col(n))` -/
def P13777709667092268763.Spec : Prop :=
  ∀ n, P13777709667092268763.a n = A106187 n

end A106187

/-! ## A106187.P4036552619837633058

`A000984(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A106187.P4036552619837633058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A106187.P4036552619837633058

namespace A106187

/-- `A000984(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P4036552619837633058.Spec : Prop :=
  ∀ n, P4036552619837633058.a n = A106187 n

end A106187

/-! ## A106187.P13675472546529189244

`A000984(C(comp[∑[n]]-n, 2)-1-n)`
-/

namespace A106187.P13675472546529189244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)).toNat

end

end A106187.P13675472546529189244

namespace A106187

/-- `A000984(C(comp[∑[n]]-n, 2)-1-n)` -/
def P13675472546529189244.Spec : Prop :=
  ∀ n, P13675472546529189244.a n = A106187 n

end A106187

/-! ## A106187.P6201471584029361036

`A323230(C(comp[∑[n]]-n, 2)-n)-1`
-/

namespace A106187.P6201471584029361036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) - 1

end

end A106187.P6201471584029361036

namespace A106187

/-- `A323230(C(comp[∑[n]]-n, 2)-n)-1` -/
def P6201471584029361036.Spec : Prop :=
  ∀ n, P6201471584029361036.a n = A106187 n

end A106187

/-! ## A106187.P6521944715141959444

`A191529(2*(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A106187.P6521944715141959444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A106187.P6521944715141959444

namespace A106187

/-- `A191529(2*(C(comp[∑[n]]-n, 2)-n))` -/
def P6521944715141959444.Spec : Prop :=
  ∀ n, P6521944715141959444.a n = A106187 n

end A106187

/-! ## A106187.P4414975242850201912

`A126869(abs((2-n²+n)%comp[∑[n]]))`
-/

namespace A106187.P4414975242850201912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 |Int.tmod (2 - (n ^ 2 : ℤ) + (n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)|.toNat

end

end A106187.P4414975242850201912

namespace A106187

/-- `A126869(abs((2-n²+n)%comp[∑[n]]))` -/
def P4414975242850201912.Spec : Prop :=
  ∀ n, P4414975242850201912.a n = A106187 n

end A106187

/-! ## A106187.P11781683647712492270

`A001405(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A106187.P11781683647712492270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A106187.P11781683647712492270

namespace A106187

/-- `A001405(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P11781683647712492270.Spec : Prop :=
  ∀ n, P11781683647712492270.a n = A106187 n

end A106187

/-! ## A106187.P1353168678748413952

`A056040(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A106187.P1353168678748413952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A106187.P1353168678748413952

namespace A106187

/-- `A056040(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P1353168678748413952.Spec : Prop :=
  ∀ n, P1353168678748413952.a n = A106187 n

end A106187

/-! ## A106187.P7134230854047429787

`A063886(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A106187.P7134230854047429787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A106187.P7134230854047429787

namespace A106187

/-- `A063886(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P7134230854047429787.Spec : Prop :=
  ∀ n, P7134230854047429787.a n = A106187 n

end A106187

/-! ## A106187.P6316077602930757013

`A126869(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A106187.P6316077602930757013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A106187.P6316077602930757013

namespace A106187

/-- `A126869(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P6316077602930757013.Spec : Prop :=
  ∀ n, P6316077602930757013.a n = A106187 n

end A106187

/-! ## A106187.P575274589459937692

`A000984(A025581(n))`
-/

namespace A106187.P575274589459937692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A025581 n).toNat

end

end A106187.P575274589459937692

namespace A106187

/-- `A000984(A025581(n))` -/
def P575274589459937692.Spec : Prop :=
  ∀ n, P575274589459937692.a n = A106187 n

end A106187

/-! ## A106187.P14859091786747816251

`A047074(A099375(n))`
-/

namespace A106187.P14859091786747816251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 (A099375 n).toNat

end

end A106187.P14859091786747816251

namespace A106187

/-- `A047074(A099375(n))` -/
def P14859091786747816251.Spec : Prop :=
  ∀ n, P14859091786747816251.a n = A106187 n

end A106187

/-! ## A106187.P16249123817993040366

`A120399(A143971(n+1))`
-/

namespace A106187.P16249123817993040366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120399 (A143971 (n + 1)).toNat

end

end A106187.P16249123817993040366

namespace A106187

/-- `A120399(A143971(n+1))` -/
def P16249123817993040366.Spec : Prop :=
  ∀ n, P16249123817993040366.a n = A106187 n

end A106187

/-! ## A106187.P15822742548261722353

`A128014(A185782(n+1))`
-/

namespace A106187.P15822742548261722353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (A185782 (n + 1)).toNat

end

end A106187.P15822742548261722353

namespace A106187

/-- `A128014(A185782(n+1))` -/
def P15822742548261722353.Spec : Prop :=
  ∀ n, P15822742548261722353.a n = A106187 n

end A106187

/-! ## A106187.P1454483559734872023

`A191529(A212012(n+1))`
-/

namespace A106187.P1454483559734872023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (A212012 (n + 1)).toNat

end

end A106187.P1454483559734872023

namespace A106187

/-- `A191529(A212012(n+1))` -/
def P1454483559734872023.Spec : Prop :=
  ∀ n, P1454483559734872023.a n = A106187 n

end A106187

/-! ## A106187.P2485298802947865788

`A001405(A099375(n)-1)`
-/

namespace A106187.P2485298802947865788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A099375 n - 1).toNat

end

end A106187.P2485298802947865788

namespace A106187

/-- `A001405(A099375(n)-1)` -/
def P2485298802947865788.Spec : Prop :=
  ∀ n, P2485298802947865788.a n = A106187 n

end A106187

/-! ## A106187.P16882877444472235234

`A001405(2*A025581(n))`
-/

namespace A106187.P16882877444472235234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * A025581 n).toNat

end

end A106187.P16882877444472235234

namespace A106187

/-- `A001405(2*A025581(n))` -/
def P16882877444472235234.Spec : Prop :=
  ∀ n, P16882877444472235234.a n = A106187 n

end A106187

/-! ## A106187.P5108722745137232936

`A056040(2*A025581(n))`
-/

namespace A106187.P5108722745137232936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * A025581 n).toNat

end

end A106187.P5108722745137232936

namespace A106187

/-- `A056040(2*A025581(n))` -/
def P5108722745137232936.Spec : Prop :=
  ∀ n, P5108722745137232936.a n = A106187 n

end A106187

/-! ## A106187.P15685616748215111909

`A126869(2*A025581(n))`
-/

namespace A106187.P15685616748215111909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * A025581 n).toNat

end

end A106187.P15685616748215111909

namespace A106187

/-- `A126869(2*A025581(n))` -/
def P15685616748215111909.Spec : Prop :=
  ∀ n, P15685616748215111909.a n = A106187 n

end A106187

/-!
# A106188: Expansion of 1/((1-x^2)*sqrt(1-4*x)).

The programs for A106188, the canonical program `A106188.P159440762461777532` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106188 has offset 0).

The definition of A106188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106188.P10507068718228732002

`∑[(4-2/n)*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A106188.P10507068718228732002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A106188.P10507068718228732002

namespace A106188

/-- `∑[(4-2/n)*a(n-1)]-a(n-1)` -/
def P10507068718228732002.Spec : Prop :=
  ∀ n, P10507068718228732002.a n = (A106188 n : ℚ)

end A106188

/-! ## A106188.P9163326905047059946

`A006134(n)-a(n-1)` with `a(0)=1`
-/

namespace A106188.P9163326905047059946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006134 n - a (n - 1)

end

end A106188.P9163326905047059946

namespace A106188

/-- `A006134(n)-a(n-1)` -/
def P9163326905047059946.Spec : Prop :=
  ∀ n, P9163326905047059946.a n = A106188 n

end A106188

/-! ## A106188.P5397121988092475834

`∑[abs(A104551(2*(n+1)))]`
-/

namespace A106188.P5397121988092475834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104551 (2 * (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106188.P5397121988092475834

namespace A106188

/-- `∑[abs(A104551(2*(n+1)))]` -/
def P5397121988092475834.Spec : Prop :=
  ∀ n, P5397121988092475834.a n = A106188 n

end A106188

/-! ## A106188.P159440762461777532

`A000984(n)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106188

/-- `A000984(n)+a(n-2)` -/
def P159440762461777532.Spec : Prop :=
  ∀ n, P159440762461777532.a n = A106188 n

theorem P159440762461777532.correct : P159440762461777532.Spec := by
  intro n
  simp only [A106188]

end A106188

/-! ## A106188.P3644790464279224988

`A054108(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A106188.P3644790464279224988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054108 (n - 1) + a (n - 1)

end

end A106188.P3644790464279224988

namespace A106188

/-- `A054108(n-1)+a(n-1)` -/
def P3644790464279224988.Spec : Prop :=
  ∀ n, P3644790464279224988.a n = A106188 n

end A106188

/-! ## A106188.P8585054595221514474

`record[A081668(n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P8585054595221514474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A106188.P8585054595221514474

namespace A106188

/-- `record[A081668(n)]+a(n-2)` -/
def P8585054595221514474.Spec : Prop :=
  ∀ n, P8585054595221514474.a n = A106188 n

end A106188

/-! ## A106188.P7425988810256122855

`record[A126869(n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P7425988810256122855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A106188.P7425988810256122855

namespace A106188

/-- `record[A126869(n)]+a(n-2)` -/
def P7425988810256122855.Spec : Prop :=
  ∀ n, P7425988810256122855.a n = A106188 n

end A106188

/-! ## A106188.P2620292317076987184

`record[A126930(n)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P2620292317076987184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 2)

end

end A106188.P2620292317076987184

namespace A106188

/-- `record[A126930(n)]+a(n-2)` -/
def P2620292317076987184.Spec : Prop :=
  ∀ n, P2620292317076987184.a n = A106188 n

end A106188

/-! ## A106188.P7517329942865426857

`A001405(2*n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P7517329942865426857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001405 (2 * n) + a (n - 2)

end

end A106188.P7517329942865426857

namespace A106188

/-- `A001405(2*n)+a(n-2)` -/
def P7517329942865426857.Spec : Prop :=
  ∀ n, P7517329942865426857.a n = A106188 n

end A106188

/-! ## A106188.P10749070852928267763

`A063886(2*n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P10749070852928267763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A063886 (2 * n) + a (n - 2)

end

end A106188.P10749070852928267763

namespace A106188

/-- `A063886(2*n)+a(n-2)` -/
def P10749070852928267763.Spec : Prop :=
  ∀ n, P10749070852928267763.a n = A106188 n

end A106188

/-! ## A106188.P3629420775777176366

`a(n-2)+(n+1)*A000108(n)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P3629420775777176366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (n + 1 : ℤ) * A000108 n

end

end A106188.P3629420775777176366

namespace A106188

/-- `a(n-2)+(n+1)*A000108(n)` -/
def P3629420775777176366.Spec : Prop :=
  ∀ n, P3629420775777176366.a n = A106188 n

end A106188

/-! ## A106188.P13315953195783112850

`2*A106269(n)-A059841(n)`
-/

namespace A106188.P13315953195783112850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106269 n - A059841 n

end

end A106188.P13315953195783112850

namespace A106188

/-- `2*A106269(n)-A059841(n)` -/
def P13315953195783112850.Spec : Prop :=
  ∀ n, P13315953195783112850.a n = A106188 n

end A106188

/-! ## A106188.P13872190833582620824

`∑[A001405(A004277(n))-a(n-1)]` with `a(0)=1`
-/

namespace A106188.P13872190833582620824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001405 (A004277 n).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106188.P13872190833582620824

namespace A106188

/-- `∑[A001405(A004277(n))-a(n-1)]` -/
def P13872190833582620824.Spec : Prop :=
  ∀ n, P13872190833582620824.a n = A106188 n

end A106188

/-! ## A106188.P10233616641968742016

`∑[abs(∑[A128057(2*n)])]`
-/

namespace A106188.P10233616641968742016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128057 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106188.P10233616641968742016

namespace A106188

/-- `∑[abs(∑[A128057(2*n)])]` -/
def P10233616641968742016.Spec : Prop :=
  ∀ n, P10233616641968742016.a n = A106188 n

end A106188

/-! ## A106188.P11678967435157947938

`a(n-2)+C(2*n, n)` with `a(0)=1, a(1)=2`
-/

namespace A106188.P11678967435157947938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Nat.choose (2 * n) n

end

end A106188.P11678967435157947938

namespace A106188

/-- `a(n-2)+C(2*n, n)` -/
def P11678967435157947938.Spec : Prop :=
  ∀ n, (P11678967435157947938.a n : ℤ) = A106188 n

end A106188

/-! ## A106188.P1396243078737844991

`∑[C(2*n, n)-a(n-1)]` with `a(0)=1`
-/

namespace A106188.P1396243078737844991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose (2 * n) n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106188.P1396243078737844991

namespace A106188

/-- `∑[C(2*n, n)-a(n-1)]` -/
def P1396243078737844991.Spec : Prop :=
  ∀ n, P1396243078737844991.a n = A106188 n

end A106188

/-!
# A106189: Expansion of 1/((1-2x^2)sqrt(1-4x)).

The programs for A106189, the canonical program `A106189.P10544988817194664811` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106189 has offset 0).

The definition of A106189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106189.P10544988817194664811

`A000984(n)+2*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106189

/-- `A000984(n)+2*a(n-2)` -/
def P10544988817194664811.Spec : Prop :=
  ∀ n, P10544988817194664811.a n = A106189 n

theorem P10544988817194664811.correct : P10544988817194664811.Spec := by
  intro n
  simp only [A106189]

end A106189

/-! ## A106189.P13892786839736942450

`2*(A088218(n)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A106189.P13892786839736942450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (A088218 n + a (n - 2))

end

end A106189.P13892786839736942450

namespace A106189

/-- `2*(A088218(n)+a(n-2))` -/
def P13892786839736942450.Spec : Prop :=
  ∀ n, P13892786839736942450.a n = A106189 n

end A106189

/-! ## A106189.P7762927627692597911

`record[A081668(n)]+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106189.P7762927627692597911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * a (n - 2)

end

end A106189.P7762927627692597911

namespace A106189

/-- `record[A081668(n)]+2*a(n-2)` -/
def P7762927627692597911.Spec : Prop :=
  ∀ n, P7762927627692597911.a n = A106189 n

end A106189

/-! ## A106189.P15962205726199716856

`C(2*n, n)+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106189.P15962205726199716856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose (2 * n) n + 2 * a (n - 2)

end

end A106189.P15962205726199716856

namespace A106189

/-- `C(2*n, n)+2*a(n-2)` -/
def P15962205726199716856.Spec : Prop :=
  ∀ n, (P15962205726199716856.a n : ℤ) = A106189 n

end A106189

/-! ## A106189.P15538955080078982779

`A276418(∑[n])+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106189.P15538955080078982779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A276418 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * a (n - 2)

end

end A106189.P15538955080078982779

namespace A106189

/-- `A276418(∑[n])+2*a(n-2)` -/
def P15538955080078982779.Spec : Prop :=
  ∀ n, P15538955080078982779.a n = A106189 n

end A106189

/-!
# A106190: Triangle read by rows: T(n,k) = binomial(2(n-k),n-k)/(1-2(n-k)).

The programs for A106190, the canonical program `A106190.P5131900551882882016` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106190 has offset 0).

The definition of A106190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106190.P5131900551882882016

`C(2*(row(n)-col(n)), row(n)-col(n))/(1-2*(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106190

/-- `C(2*(row(n)-col(n)), row(n)-col(n))/(1-2*(row(n)-col(n)))` -/
def P5131900551882882016.Spec : Prop :=
  ∀ n, P5131900551882882016.a n = (A106190 n : ℚ)

end A106190

/-! ## A106190.P9650674714009533091

`A002420(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A106190.P9650674714009533091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A106190.P9650674714009533091

namespace A106190

/-- `A002420(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9650674714009533091.Spec : Prop :=
  ∀ n, P9650674714009533091.a n = A106190 n

end A106190

/-! ## A106190.P8375895257555770864

`A002420(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A106190.P8375895257555770864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A106190.P8375895257555770864

namespace A106190

/-- `A002420(C(comp[∑[n]]-n, 2)-n-1)` -/
def P8375895257555770864.Spec : Prop :=
  ∀ n, P8375895257555770864.a n = A106190 n

end A106190

/-! ## A106190.P6836800451449668868

`A002420(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A106190.P6836800451449668868
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A106190.P6836800451449668868

namespace A106190

/-- `A002420(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))` -/
def P6836800451449668868.Spec : Prop :=
  ∀ n, P6836800451449668868.a n = A106190 n

end A106190

/-! ## A106190.P5124580202269895927

`A002420(A025581(n))`
-/

namespace A106190.P5124580202269895927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (A025581 n).toNat

end

end A106190.P5124580202269895927

namespace A106190

/-- `A002420(A025581(n))` -/
def P5124580202269895927.Spec : Prop :=
  ∀ n, P5124580202269895927.a n = A106190 n

end A106190

/-! ## A106190.P11871308105080224662

`A002420(log2(A130321(n)))`
-/

namespace A106190.P11871308105080224662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A106190.P11871308105080224662

namespace A106190

/-- `A002420(log2(A130321(n)))` -/
def P11871308105080224662.Spec : Prop :=
  ∀ n, P11871308105080224662.a n = A106190 n

end A106190

/-! ## A106190.P10506203736896475164

`A002420(val(A036561(n), 2))`
-/

namespace A106190.P10506203736896475164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A106190.P10506203736896475164

namespace A106190

/-- `A002420(val(A036561(n), 2))` -/
def P10506203736896475164.Spec : Prop :=
  ∀ n, P10506203736896475164.a n = A106190 n

end A106190

/-!
# A106191: Expansion of sqrt(1-4x)/(1-x).

The programs for A106191, the canonical program `A106191.P3314172830453665271` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106191 has offset 0).

The definition of A106191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106191.P3314172830453665271

`1/n*((5*n-6)*a(n-1)-(4*n-6)*a(n-2))` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106191

/-- `1/n*((5*n-6)*a(n-1)-(4*n-6)*a(n-2))` -/
def P3314172830453665271.Spec : Prop :=
  ∀ n, P3314172830453665271.a n = (A106191 n : ℚ)

end A106191

/-! ## A106191.P4259842525184371696

`∑[(4-6/n)*a(n-1)]` with `a(0)=1`
-/

namespace A106191.P4259842525184371696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106191.P4259842525184371696

namespace A106191

/-- `∑[(4-6/n)*a(n-1)]` -/
def P4259842525184371696.Spec : Prop :=
  ∀ n, P4259842525184371696.a n = (A106191 n : ℚ)

end A106191

/-! ## A106191.P16191414131371132832

`∑[A002420(n)]`
-/

namespace A106191.P16191414131371132832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106191.P16191414131371132832

namespace A106191

/-- `∑[A002420(n)]` -/
def P16191414131371132832.Spec : Prop :=
  ∀ n, P16191414131371132832.a n = A106191 n

end A106191

/-! ## A106191.P7139728444428925478

`3-2*A155587(n)`
-/

namespace A106191.P7139728444428925478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A155587 n

end

end A106191.P7139728444428925478

namespace A106191

/-- `3-2*A155587(n)` -/
def P7139728444428925478.Spec : Prop :=
  ∀ n, P7139728444428925478.a n = A106191 n

end A106191

/-! ## A106191.P7322914689146755085

`∑[2*A115140(n)]-1`
-/

namespace A106191.P7322914689146755085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A106191.P7322914689146755085

namespace A106191

/-- `∑[2*A115140(n)]-1` -/
def P7322914689146755085.Spec : Prop :=
  ∀ n, P7322914689146755085.a n = A106191 n

end A106191

/-! ## A106191.P11567999458395952486

`2-∑[A089408(2*n)]`
-/

namespace A106191.P11567999458395952486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106191.P11567999458395952486

namespace A106191

/-- `2-∑[A089408(2*n)]` -/
def P11567999458395952486.Spec : Prop :=
  ∀ n, P11567999458395952486.a n = A106191 n

end A106191

/-! ## A106191.P12701518805193701288

`a(n-1)-2*A120588(n)` with `a(0)=1`
-/

namespace A106191.P12701518805193701288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 * A120588 n

end

end A106191.P12701518805193701288

namespace A106191

/-- `a(n-1)-2*A120588(n)` -/
def P12701518805193701288.Spec : Prop :=
  ∀ n, P12701518805193701288.a n = A106191 n

end A106191

/-! ## A106191.P11164177507610373301

`a(n-1)-2*A000108(n-1)` with `a(0)=1`
-/

namespace A106191.P11164177507610373301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 * A000108 (n - 1)

end

end A106191.P11164177507610373301

namespace A106191

/-- `a(n-1)-2*A000108(n-1)` -/
def P11164177507610373301.Spec : Prop :=
  ∀ n, P11164177507610373301.a n = A106191 n

end A106191

/-! ## A106191.P8220527619813000700

`∑[2*A181641(n)]-A181641(n)`
-/

namespace A106191.P8220527619813000700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181641 n

end

end A106191.P8220527619813000700

namespace A106191

/-- `∑[2*A181641(n)]-A181641(n)` -/
def P8220527619813000700.Spec : Prop :=
  ∀ n, P8220527619813000700.a n = A106191 n

end A106191

/-! ## A106191.P12837587292821934632

`∑[A033999(n)*A104624(2*n)]`
-/

namespace A106191.P12837587292821934632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104624 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106191.P12837587292821934632

namespace A106191

/-- `∑[A033999(n)*A104624(2*n)]` -/
def P12837587292821934632.Spec : Prop :=
  ∀ n, P12837587292821934632.a n = A106191 n

end A106191

/-! ## A106191.P459346279672562813

`2*(A000108(n)-∑[A000108(n)])+1`
-/

namespace A106191.P459346279672562813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000108 n - ∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A106191.P459346279672562813

namespace A106191

/-- `2*(A000108(n)-∑[A000108(n)])+1` -/
def P459346279672562813.Spec : Prop :=
  ∀ n, P459346279672562813.a n = A106191 n

end A106191

/-! ## A106191.P8995102579370389044

`A068875(A028310(n))-∑[A068875(n)]`
-/

namespace A106191.P8995102579370389044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (A028310 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106191.P8995102579370389044

namespace A106191

/-- `A068875(A028310(n))-∑[A068875(n)]` -/
def P8995102579370389044.Spec : Prop :=
  ∀ n, P8995102579370389044.a n = A106191 n

end A106191

/-! ## A106191.P9139094249003327207

`A106192(n+1)+A106192(n)-A002420(n+1)`
-/

namespace A106191.P9139094249003327207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106192 (n + 1) + (A106192 n - A002420 (n + 1))

end

end A106191.P9139094249003327207

namespace A106191

/-- `A106192(n+1)+A106192(n)-A002420(n+1)` -/
def P9139094249003327207.Spec : Prop :=
  ∀ n, P9139094249003327207.a n = A106191 n

end A106191

/-! ## A106191.P16713499348861625537

`2-∑[A241543(2*n)]`
-/

namespace A106191.P16713499348861625537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106191.P16713499348861625537

namespace A106191

/-- `2-∑[A241543(2*n)]` -/
def P16713499348861625537.Spec : Prop :=
  ∀ n, P16713499348861625537.a n = A106191 n

end A106191

/-!
# A106192: Expansion of sqrt(1-4x)/(1-x^2).

The programs for A106192, the canonical program `A106192.P12701748668715467887` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106192 has offset 0).

The definition of A106192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106192.P8421121183270105245

`∑[(4-6/n)*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A106192.P8421121183270105245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A106192.P8421121183270105245

namespace A106192

/-- `∑[(4-6/n)*a(n-1)]-a(n-1)` -/
def P8421121183270105245.Spec : Prop :=
  ∀ n, P8421121183270105245.a n = (A106192 n : ℚ)

end A106192

/-! ## A106192.P10840281548676864907

`∑[A181641(n)]`
-/

namespace A106192.P10840281548676864907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106192.P10840281548676864907

namespace A106192

/-- `∑[A181641(n)]` -/
def P10840281548676864907.Spec : Prop :=
  ∀ n, P10840281548676864907.a n = A106192 n

end A106192

/-! ## A106192.P12701748668715467887

`A106191(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106192

/-- `A106191(n)-a(n-1)` -/
def P12701748668715467887.Spec : Prop :=
  ∀ n, P12701748668715467887.a n = A106192 n

theorem P12701748668715467887.correct : P12701748668715467887.Spec := by
  intro n
  simp only [A106192]

end A106192

/-! ## A106192.P1320551152228996179

`∑[A002420(n)-a(n-1)]` with `a(0)=1`
-/

namespace A106192.P1320551152228996179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002420 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106192.P1320551152228996179

namespace A106192

/-- `∑[A002420(n)-a(n-1)]` -/
def P1320551152228996179.Spec : Prop :=
  ∀ n, P1320551152228996179.a n = A106192 n

end A106192

/-! ## A106192.P257637741199556543

`∑[2*A115140(n)-a(n-1)]` with `a(0)=1`
-/

namespace A106192.P257637741199556543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * A115140 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106192.P257637741199556543

namespace A106192

/-- `∑[2*A115140(n)-a(n-1)]` -/
def P257637741199556543.Spec : Prop :=
  ∀ n, P257637741199556543.a n = A106192 n

end A106192

/-! ## A106192.P7635703019687872936

`∑[∑[A104624(2*n)]*A033999(n)]`
-/

namespace A106192.P7635703019687872936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106192.P7635703019687872936

namespace A106192

/-- `∑[∑[A104624(2*n)]*A033999(n)]` -/
def P7635703019687872936.Spec : Prop :=
  ∀ n, P7635703019687872936.a n = A106192 n

end A106192

/-! ## A106192.P4231511657694010577

`∑[(-1)^n*∑[A104624(A005843(n))]]`
-/

namespace A106192.P4231511657694010577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (A005843 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106192.P4231511657694010577

namespace A106192

/-- `∑[(-1)^n*∑[A104624(A005843(n))]]` -/
def P4231511657694010577.Spec : Prop :=
  ∀ n, P4231511657694010577.a n = A106192 n

end A106192

/-! ## A106192.P6365498514568447717

`∑[(A004442(n)-n)*∑[A104624(2*n)]]`
-/

namespace A106192.P6365498514568447717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104624 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106192.P6365498514568447717

namespace A106192

/-- `∑[(A004442(n)-n)*∑[A104624(2*n)]]` -/
def P6365498514568447717.Spec : Prop :=
  ∀ n, P6365498514568447717.a n = A106192 n

end A106192

/-!
# A106194: Triangle read by rows, generated from binomial transforms of odd numbers.

The programs for A106194, there is no canonical definition to state claims against.
-/

/-! ## A106194.P15227860177076242917

`2*A055249(n)-A055248(n)`
-/

namespace A106194.P15227860177076242917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055249 n - A055248 n

end

end A106194.P15227860177076242917

/-! ## A106194.P15408455762531546426

`A055249(comp[∑[n]])`
-/

namespace A106194.P15408455762531546426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A106194.P15408455762531546426

/-! ## A106194.P13046795277924998172

`or(char[2], A055249(A014132(n+1)))`
-/

namespace A106194.P13046795277924998172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A055249 (A014132 (n + 1)).toNat)

end

end A106194.P13046795277924998172

/-! ## A106194.P10167441701290107058

`abs((-1)^n*A055249(A003056(n)+2+n))`
-/

namespace A106194.P10167441701290107058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * A055249 (A003056 n + 2 + (n : ℤ)).toNat|

end

end A106194.P10167441701290107058

/-! ## A106194.P12196357342654856934

`A055249(A014132(n+1))+A000007(n+1)`
-/

namespace A106194.P12196357342654856934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (A014132 (n + 1)).toNat + A000007 (n + 1)

end

end A106194.P12196357342654856934

/-! ## A106194.P15119305305840327106

`A193605(A099375(n)+n)`
-/

namespace A106194.P15119305305840327106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A099375 n + (n : ℤ)).toNat

end

end A106194.P15119305305840327106

/-! ## A106194.P9893500223518031133

`A193605(A061579(comp[∑[n]]))`
-/

namespace A106194.P9893500223518031133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A106194.P9893500223518031133

/-! ## A106194.P9175976038644566463

`A055249(A014132(n+1))%A000045(n+4)`
-/

namespace A106194.P9175976038644566463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055249 (A014132 (n + 1)).toNat) (A000045 (n + 4))

end

end A106194.P9175976038644566463

/-! ## A106194.P14278708586128712423

`A007318(∑[n])*A055249(A014132(n+1))`
-/

namespace A106194.P14278708586128712423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A055249 (A014132 (n + 1)).toNat

end

end A106194.P14278708586128712423

/-! ## A106194.P8777933085597604580

`A193605(A380649(n+1))`
-/

namespace A106194.P8777933085597604580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193605 (A380649 (n + 1)).toNat

end

end A106194.P8777933085597604580

/-!
# A106195: Riordan array (1/(1-2*x), x*(1-x)/(1-2*x)).

The programs for A106195, the canonical program `A106195.P14550587330251621766` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106195 has offset 0).

The definition of A106195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106195.P14550587330251621766

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106195

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P14550587330251621766.Spec : Prop :=
  ∀ n, P14550587330251621766.a n = A106195 n

theorem P14550587330251621766.correct : P14550587330251621766.Spec := by
  intro n
  simp only [A106195]

end A106195

/-! ## A106195.P1243549100994120269

`A059474(n)/A059268(n)`
-/

namespace A106195.P1243549100994120269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059474 n : ℚ) / (A059268 n : ℚ)

end

end A106195.P1243549100994120269

namespace A106195

/-- `A059474(n)/A059268(n)` -/
def P1243549100994120269.Spec : Prop :=
  ∀ n, P1243549100994120269.a n = (A106195 n : ℚ)

end A106195

/-! ## A106195.P13618867925595963450

`2*A105306(n+1)-A062110(n)`
-/

namespace A106195.P13618867925595963450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105306 (n + 1) - A062110 n

end

end A106195.P13618867925595963450

namespace A106195

/-- `2*A105306(n+1)-A062110(n)` -/
def P13618867925595963450.Spec : Prop :=
  ∀ n, P13618867925595963450.a n = A106195 n

end A106195

/-! ## A106195.P12680028020731508760

`2*A062110(A014132(n+1))-A062110(n)`
-/

namespace A106195.P12680028020731508760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062110 (A014132 (n + 1)).toNat - A062110 n

end

end A106195.P12680028020731508760

namespace A106195

/-- `2*A062110(A014132(n+1))-A062110(n)` -/
def P12680028020731508760.Spec : Prop :=
  ∀ n, P12680028020731508760.a n = A106195 n

end A106195

/-! ## A106195.P5896529711494669670

`A208341(A061579(n))`
-/

namespace A106195.P5896529711494669670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A061579 n).toNat

end

end A106195.P5896529711494669670

namespace A106195

/-- `A208341(A061579(n))` -/
def P5896529711494669670.Spec : Prop :=
  ∀ n, P5896529711494669670.a n = A106195 n

end A106195

/-! ## A106195.P15148499305935335805

`A208341(A038722(n+1)-1)`
-/

namespace A106195.P15148499305935335805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A038722 (n + 1) - 1).toNat

end

end A106195.P15148499305935335805

namespace A106195

/-- `A208341(A038722(n+1)-1)` -/
def P15148499305935335805.Spec : Prop :=
  ∀ n, P15148499305935335805.a n = A106195 n

end A106195

/-! ## A106195.P659460249580651030

`A105306(n+1)+A049600(A061579(n))`
-/

namespace A106195.P659460249580651030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) + A049600 (A061579 n).toNat

end

end A106195.P659460249580651030

namespace A106195

/-- `A105306(n+1)+A049600(A061579(n))` -/
def P659460249580651030.Spec : Prop :=
  ∀ n, P659460249580651030.a n = A106195 n

end A106195

/-! ## A106195.P8398851229441244336

`A105306(n+1)+A049600(A038722(n+1)-1)`
-/

namespace A106195.P8398851229441244336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) + A049600 (A038722 (n + 1) - 1).toNat

end

end A106195.P8398851229441244336

namespace A106195

/-- `A105306(n+1)+A049600(A038722(n+1)-1)` -/
def P8398851229441244336.Spec : Prop :=
  ∀ n, P8398851229441244336.a n = A106195 n

end A106195

/-! ## A106195.P1837159060476058401

`A160232(A038722(n+1))+A049600(A061579(n))`
-/

namespace A106195.P1837159060476058401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A038722 (n + 1)).toNat + A049600 (A061579 n).toNat

end

end A106195.P1837159060476058401

namespace A106195

/-- `A160232(A038722(n+1))+A049600(A061579(n))` -/
def P1837159060476058401.Spec : Prop :=
  ∀ n, P1837159060476058401.a n = A106195 n

end A106195

/-! ## A106195.P1119116978281593281

`A208341(A038722(n+2))`
-/

namespace A106195.P1119116978281593281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A038722 (n + 2)).toNat

end

end A106195.P1119116978281593281

namespace A106195

/-- `A208341(A038722(n+2))` -/
def P1119116978281593281.Spec : Prop :=
  ∀ n, P1119116978281593281.a n = A106195 n

end A106195

/-! ## A106195.P8992270121591607626

`A153342(eq[1, A023532(n)])-A153342(n)`
-/

namespace A106195.P8992270121591607626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A153342 n

end

end A106195.P8992270121591607626

namespace A106195

/-- `A153342(eq[1, A023532(n)])-A153342(n)` -/
def P8992270121591607626.Spec : Prop :=
  ∀ n, P8992270121591607626.a n = A106195 n

end A106195

/-! ## A106195.P9467127119581188465

`A055587(A014132(n+1))`
-/

namespace A106195.P9467127119581188465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A014132 (n + 1)).toNat

end

end A106195.P9467127119581188465

namespace A106195

/-- `A055587(A014132(n+1))` -/
def P9467127119581188465.Spec : Prop :=
  ∀ n, P9467127119581188465.a n = A106195 n

end A106195

/-! ## A106195.P17565638383514843081

`A055587(A007401(n+2))`
-/

namespace A106195.P17565638383514843081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A007401 (n + 2)).toNat

end

end A106195.P17565638383514843081

namespace A106195

/-- `A055587(A007401(n+2))` -/
def P17565638383514843081.Spec : Prop :=
  ∀ n, P17565638383514843081.a n = A106195 n

end A106195

/-! ## A106195.P8216075029633972195

`A055587(lt[5, A055584(n)])`
-/

namespace A106195.P8216075029633972195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106195.P8216075029633972195

namespace A106195

/-- `A055587(lt[5, A055584(n)])` -/
def P8216075029633972195.Spec : Prop :=
  ∀ n, P8216075029633972195.a n = A106195 n

end A106195

/-! ## A106195.P335869866223761789

`A049600(2*A004736(n+1)+n)`
-/

namespace A106195.P335869866223761789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A106195.P335869866223761789

namespace A106195

/-- `A049600(2*A004736(n+1)+n)` -/
def P335869866223761789.Spec : Prop :=
  ∀ n, P335869866223761789.a n = A106195 n

end A106195

/-! ## A106195.P2502220203233518755

`A049600(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A106195.P2502220203233518755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A106195.P2502220203233518755

namespace A106195

/-- `A049600(A004736(n+1)+A004736(n+1)+n)` -/
def P2502220203233518755.Spec : Prop :=
  ∀ n, P2502220203233518755.a n = A106195 n

end A106195

/-!
# A106196: Triangle read by rows, generated from Pascal's triangle.

The programs for A106196, there is no canonical definition to state claims against.
-/

/-! ## A106196.P3627156174833452034

`A037027(n)+A016389(A022166(n))`
-/

namespace A106196.P3627156174833452034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + A016389 (A022166 n).toNat

end

end A106196.P3627156174833452034

/-! ## A106196.P14519743221592666168

`A037027(n)+A016389(A027336(n))`
-/

namespace A106196.P14519743221592666168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + A016389 (A027336 n).toNat

end

end A106196.P14519743221592666168

/-! ## A106196.P14204240647961880513

`A037027(n)-A011731(A022171(n))`
-/

namespace A106196.P14204240647961880513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - A011731 (A022171 n).toNat

end

end A106196.P14204240647961880513

/-! ## A106196.P14905072956509906606

`A037027(n)-A025465(A023105(n))`
-/

namespace A106196.P14905072956509906606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - A025465 (A023105 n).toNat

end

end A106196.P14905072956509906606

/-! ## A106196.P5075387994090787905

`A037027(n)-A037824(A022173(n))`
-/

namespace A106196.P5075387994090787905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - A037824 (A022173 n).toNat

end

end A106196.P5075387994090787905

/-!
# A106198: Triangle, columns = successive binomial transforms of Fibonacci numbers.

The programs for A106198, there is no canonical definition to state claims against.
-/

/-! ## A106198.P16961694121474978362

`A081572(A061579(n))`
-/

namespace A106198.P16961694121474978362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A061579 n).toNat

end

end A106198.P16961694121474978362

/-! ## A106198.P784356163041904539

`A081572(A114327(n)+n)`
-/

namespace A106198.P784356163041904539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A114327 n + (n : ℤ)).toNat

end

end A106198.P784356163041904539

/-! ## A106198.P15067264622364023196

`A081572(A038722(n+1)-1)`
-/

namespace A106198.P15067264622364023196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A038722 (n + 1) - 1).toNat

end

end A106198.P15067264622364023196

/-! ## A106198.P14947819487636820237

`A081572(A093995(n+1)-(n+1))`
-/

namespace A106198.P14947819487636820237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A106198.P14947819487636820237

/-! ## A106198.P5582306523501487335

`A081572(A038722(n+2))`
-/

namespace A106198.P5582306523501487335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A038722 (n + 2)).toNat

end

end A106198.P5582306523501487335

/-!
# A106199: a(n)=numerator of the probability that (x-y)/(x+y)+(y-z)/(y+z)+(z-u)/(z+u)+ (u-x)/(u+x)>0, assuming that each random quadruple of integers (x,y,z,u), with a<=x,y,z,u<=n, is equally likely.

The programs for A106199, there is no canonical definition to state claims against.
-/

/-! ## A106199.P9635854917259168837

`A028897(A088695(n)-1)`
-/

namespace A106199.P9635854917259168837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A088695 n - 1).toNat

end

end A106199.P9635854917259168837

/-! ## A106199.P3143254113148611053

`A003056(C(A372683(n), 3))`
-/

namespace A106199.P3143254113148611053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A372683 n).toNat 3)

end

end A106199.P3143254113148611053

